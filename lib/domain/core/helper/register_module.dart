import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:twitter/domain/core/env/env.dart';
import 'package:twitter/domain/core/env/main_env.dart';
import 'package:twitter/domain/core/helper/logger_interceptor.dart';
import 'package:twitter/domain/core/router/router.gr.dart';

@module
abstract class RegisterModule {
  @Environment('main')
  @Named('env')
  Env get devEnv => MainEnv();

  @lazySingleton
  Dio dio(@Named('env') Env env) {
    Dio _dio = Dio();
    BaseOptions options = BaseOptions(
      connectTimeout: 120000,
      receiveTimeout: 60000,
      sendTimeout: 60000,
      headers: null,
      baseUrl: env.baseUrl,
    );
    _dio.options = options;

    final List<Interceptor> interceptors = [];

    interceptors.add(
      LoggerInterceptor(
          requestBody: true, request: true, requestHeader: true, responseBody: true, responseHeader: true),
    );

    _dio.interceptors.addAll(interceptors);

    return _dio;
  }

  @lazySingleton
  Logger get logger => Logger(
        printer: PrettyPrinter(),
      );

  @lazySingleton
  AppRouter get appRouter => AppRouter();
}
