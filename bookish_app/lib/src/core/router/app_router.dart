// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:go_router/go_router.dart';

import '../../data/repository/credential/credential_repository.dart';
import '../../presentation/book_search/book_search_page.dart';
import '../dependency_injection/dependency_injection_service.dart';

class AppRouter {
  final CredentialRepository credentialRepository;
  final DependencyInjectionService dependencyInjectorService;

  AppRouter({
    required this.credentialRepository,
    required this.dependencyInjectorService,
  });

  late final router = GoRouter(
    redirect: (_, state) {
      //guard authentication
      // if (repository.isSignedIn) {
      //   return '/signin';
      // } else {
      return null;
      // }
    },
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => BookSearchPage(
          controller: dependencyInjectorService.find(),
        ),
      ),
    ],
  );
}
