import 'package:bookish_app/src/core/app_env/app_env.dart';
import 'package:bookish_app/src/core/messenger/app_messenger.dart';
import 'package:bookish_app/src/core/router/app_router.dart';
import 'package:bookish_app/src/core/theme/app_theme.dart';
import 'package:bookish_app/src/data/datasources/api/adapter/dio_client.dart';
import 'package:bookish_app/src/data/datasources/api/book_volume_api.dart';
import 'package:bookish_app/src/data/datasources/connectivity/adapter/connectivity_status_adapter.dart';
import 'package:bookish_app/src/data/repository/credential/credential_repository.dart';
import 'package:bookish_app/src/domain/use_cases/book_download/set_book_to_delete_use_case.dart';
import 'package:bookish_app/src/domain/use_cases/book_download/set_book_to_download_use_case.dart';
import 'package:bookish_app/src/domain/use_cases/book_search/search_book_list_use_case.dart';
import 'package:bookish_app/src/presentation/book_search/book_search_controller.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../data/datasources/db/adapter/database/drift_app_db.dart';
import '../../data/datasources/db/adapter/drift_db_adapter.dart';
import '../../data/datasources/db/book_volume_db.dart';
import '../../data/datasources/db/mappers/book_volume_db_mapper.dart';
import '../../data/datasources/db/mappers/query_param_mapper.dart';
import '../../data/repository/book_volume/book_volume_list_repository.dart';
import '../../data/repository/book_volume/book_volume_repository.dart';
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
        setBookToDownloadUseCase: _getIt(),
        setBookToDeleteUseCase: _getIt(),
      ),
    );
  }

  static _initUseCasesDependencies() {
    _getIt.registerFactory(
      () => SearchBookListUseCase(
        repository: _getIt(),
      ),
    );
    _getIt.registerFactory(
      () => SetBookToDownloadUseCase(
        bookVolumeListRepository: _getIt(),
        bookVolumeRepository: _getIt(),
      ),
    );

    _getIt.registerFactory(
      () => SetBookToDeleteUseCase(
        bookVolumeRepository: _getIt(),
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

    //db
    _getIt.registerSingleton(
      AppDatabase(),
    );

    _getIt.registerSingleton(
      BookVolumeDBMapper(),
    );

    _getIt.registerSingleton(
      QueryParamMapper(),
    );

    _getIt.registerSingleton(
      DriftDBAdapter(
        database: _getIt(),
      ),
    );

    _getIt.registerSingleton(
      BookVolumeDB(
        database: _getIt(),
        mapper: _getIt(),
        queryParamMapper: _getIt(),
      ),
    );

    _getIt.registerSingleton(
      BookVolumeListRepository(
        bookVolumeApi: _getIt(),
        bookVolumeDB: _getIt(),
        connectivityStatus: _getIt(),
      ),
    );

    _getIt.registerSingleton(
      BookVolumeRepository(
        bookVolumeApi: _getIt(),
        bookVolumeDB: _getIt(),
        connectivityStatus: _getIt(),
      ),
    );
  }
}
