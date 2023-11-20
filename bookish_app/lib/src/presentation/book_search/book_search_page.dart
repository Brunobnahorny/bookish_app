import 'dart:async';

import 'package:bookish_app/src/domain/entities/book_volume/book_volume_partial_entity.dart';
import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';

import 'book_search_controller.dart';

class BookSearchPage extends StatelessWidget {
  final BookSearchController controller;

  const BookSearchPage({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverSearchBarInput(
            controller: controller,
          ),
          BookSearchListView(
            controller: controller,
          )
        ],
      ),
    );
  }
}

class SliverSearchBarInput extends StatefulWidget {
  const SliverSearchBarInput({
    super.key,
    required this.controller,
  });

  final BookSearchController controller;

  @override
  State<SliverSearchBarInput> createState() => _SliverSearchBarInputState();
}

class _SliverSearchBarInputState extends State<SliverSearchBarInput> {
  Timer? _debounce;

  _searchBarOnChanged(String value) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      widget.controller.searchList();
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 20),
        child: SearchBar(
          controller: widget.controller.searchInputTEC,
          onChanged: _searchBarOnChanged,
        ),
      ),
    );
  }
}

class BookSearchListView extends StatelessWidget {
  final BookSearchController controller;

  const BookSearchListView({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return RxBuilder(
      builder: (context) {
        return SliverList.builder(
          itemCount: controller.books.length,
          itemBuilder: (context, index) {
            final book = controller.books[index];

            return BookVolumeCard(
              book: book,
              downloadBookCallback: () => controller.downloadBook(book: book),
            );
          },
        );
      },
    );
  }
}

class BookVolumeCard extends StatelessWidget {
  final BookVolumePartialEntity book;
  final Function() downloadBookCallback;

  const BookVolumeCard({
    super.key,
    required this.book,
    required this.downloadBookCallback,
  });

  @override
  Widget build(BuildContext context) {
    final subtitleWidget = book.subtitle != null
        ? Text(
            book.subtitle!,
            maxLines: 1,
          )
        : null;

    final leadingWidget = book.links.smallThumbnail != null
        ? Image.network(book.links.smallThumbnail!)
        : null;

    return ListTile(
      leading: leadingWidget,
      title: Text(book.title, maxLines: 3, overflow: TextOverflow.ellipsis),
      subtitle: subtitleWidget,
      trailing: IconButton(
        onPressed: downloadBookCallback,
        icon: const Icon(
          Icons.download,
        ),
      ),
    );
  }
}
