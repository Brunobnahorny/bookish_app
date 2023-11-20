import 'dart:async';

import 'package:async/async.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';

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
    this._connectivity,
  ) {
    //lazily sets has connection
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
}
