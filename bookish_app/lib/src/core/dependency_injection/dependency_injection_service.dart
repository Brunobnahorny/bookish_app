import 'package:bookish_app/src/core/app_env/app_env.dart';
import 'package:bookish_app/src/core/messenger/app_messenger.dart';
import 'package:bookish_app/src/core/router/app_router.dart';
import 'package:bookish_app/src/core/theme/app_theme.dart';
import 'package:bookish_app/src/data/datasources/api/adapter/dio_client.dart';
import 'package:bookish_app/src/data/datasources/api/book_volume_api.dart';
import 'package:bookish_app/src/data/datasources/connectivity/adapter/connectivity_status_adapter.dart';
import 'package:bookish_app/src/data/repository/credential/credential_repository.dart';
import 'package:bookish_app/src/domain/use_cases/book_search/search_book_list_use_case.dart';
import 'package:bookish_app/src/presentation/book_search/book_search_controller.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../data/repository/book_search/book_search_repository.dart';
import '../adapters/http_client/http_client_adapter.dart';

class DependencyInjectionService {
  static DependencyInjectionService? instance;

  static final _getIt = GetIt.instance;

  DependencyInjectionService._();

  static Future<DependencyInjectionService> init() async {
    if (instance != null) return instance!;

    WidgetsFlutterBinding.ensureInitialized();

    instance = DependencyInjectionService._();

    await _initAppDependencies();
    await _initDatasourceDependencies();
    await _initUseCasesDependencies();
    await _initRouteDependencies();

    return instance!;
  }

  T find<T extends Object>() {
    return _getIt.call<T>();
  }

  static _initAppDependencies() {
    _getIt.registerSingleton(
      CredentialRepository(),
    );

    _getIt.registerSingleton(
      AppRouter(
        credentialRepository: _getIt(),
        dependencyInjectorService: instance!,
      ),
    );

    _getIt.registerSingleton(
      AppTheme(
        themeData: ThemeData(),
      ),
    );

    _getIt.registerSingleton(
      AppMessenger(),
    );
  }

  static _initRouteDependencies() {
    _getIt.registerFactory(
      () => BookSearchController(
        searchBookListUseCase: _getIt(),
      ),
    );
  }

  static _initUseCasesDependencies() {
    _getIt.registerFactory(
      () => SearchBookListUseCase(
        repository: _getIt(),
      ),
    );
  }

  static _initDatasourceDependencies() {
    _getIt.registerSingleton<Connectivity>(
      Connectivity(),
    );

    _getIt.registerSingleton<ConnectivityStatusAdapter>(
      ConnectivityStatusAdapter(_getIt()),
    );

    // APIS
    _getIt.registerSingleton<Dio>(
      Dio(
        BaseOptions(
          extra: {
            'key': AppEnv.gcpApiToken,
          },
        ),
      ),
    );

    _getIt.registerSingleton<IHttpClientAdapter>(
      DioAdapter(dio: _getIt()),
    );

    _getIt.registerSingleton(
      BookVolumeApi(
        httpClient: _getIt(),
      ),
    );

    _getIt.registerSingleton(
      BookSearchRepository(
        bookVolumeApi: _getIt(),
        connectivityStatus: _getIt(),
      ),
    );
  }
}
