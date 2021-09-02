import 'package:dio/dio.dart';
import 'package:twitter/domain/core/helper/logger_interceptor.dart';
import 'package:twitter/infrastructure/helper/exceptions.dart';

class ApiConfiguration {
  const ApiConfiguration._();

  static LoggerInterceptor dioLogger = LoggerInterceptor(
    requestBody: true,
    request: true,
    requestHeader: true,
    responseBody: true,
    responseHeader: true,
  );

  static BaseOptions dioBaseOptions(String baseUrl) => BaseOptions(
        connectTimeout: 120000,
        receiveTimeout: 60000,
        sendTimeout: 60000,
        headers: null,
        baseUrl: baseUrl,
      );

  static Future<dynamic> handleDioErrorResponse(DioError error) async {
    switch (error.type) {
      case DioErrorType.response:
        break;
      case DioErrorType.connectTimeout:
        return Future.error(TimeoutException());
      case DioErrorType.sendTimeout:
        return Future.error(TimeoutException());
      case DioErrorType.receiveTimeout:
        return Future.error(TimeoutException());
      default:
        return Future.error(TimeoutException());
    }
    return Future.error(TimeoutException());
  }
}
