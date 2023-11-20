import 'dart:async';
import 'dart:io';

import 'package:async/async.dart';
import 'package:bookish_app/src/data/datasources/api/book_volume_api.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';

typedef InternetAddressLookup = Future<List<InternetAddress>> Function(
  String, {
  InternetAddressType type,
});

class ConnectivityStatusAdapter {
  @visibleForTesting
  final connectivityStatusAsyncCache = AsyncCache<ConnectivityResult>(
    const Duration(
      milliseconds: 42,
    ),
  );

  ///Maintain internet connection status
  @visibleForTesting
  bool hasConnection = true;

  ///Connectivity package singleton
  final Connectivity _connectivity;

  final InternetAddressLookup internetLookup;

  ///Use this stream to listen to network changes
  Stream<bool> get stream => Stream.multi(multiStreamOnListenCallback);

  void multiStreamOnListenCallback(
    MultiStreamController<bool> streamController,
  ) {
    streamController.addStream(_connectionStream());
  }

  Stream<bool> _connectionStream() async* {
    yield await hasInternetConnection();

    await for (final status in _connectivity.onConnectivityChanged) {
      //invalidate cache
      connectivityStatusAsyncCache.invalidate();

      yield _checkConnection(status);
    }
  }

  ConnectivityStatusAdapter(
    this._connectivity, [
    this.internetLookup = InternetAddress.lookup,
  ]) {
    //sets has connection
    hasInternetConnection();
  }

  ///Verify async connectivityState

  Future<ConnectivityResult> checkConnectivityStatus() async {
    final result = await connectivityStatusAsyncCache
        .fetch(() => _connectivity.checkConnectivity());
    return result;
  }

  ///Check if has internet connection

  Future<bool> hasInternetConnection() async {
    bool connectivityResult = _checkConnection(await checkConnectivityStatus());

    if (connectivityResult) {
      return _internetLookup();
    }

    return connectivityResult;
  }

  ///Used to verify connections and set hasConnection value
  bool _checkConnection(ConnectivityResult status) {
    if (status == ConnectivityResult.bluetooth) return hasConnection;

    hasConnection = status == ConnectivityResult.ethernet ||
        status == ConnectivityResult.mobile ||
        status == ConnectivityResult.wifi;

    return hasConnection;
  }

  Future<bool> _internetLookup() async {
    try {
      final result = await (internetLookup(
        UrlConstansts.kSearchBookVolume
            .replaceAll(RegExp(r'(\/api|https:\/\/)'), ''),
        type: InternetAddressType.IPv4,
      ).timeout(
        const Duration(seconds: 2),
      ));
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
    } catch (_) {
      //DO NOTHING
    }

    return false;
  }
}
