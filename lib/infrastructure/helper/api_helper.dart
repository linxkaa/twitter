import 'dart:io';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:twitter/infrastructure/helper/api_configuration.dart';
import 'package:twitter/infrastructure/helper/exceptions.dart';

enum HeaderOption {
  NoAuthorization,
  Authorization,
}
enum ApiType { GetData, Post, Patch, Delete, PostImage, Put, PostList }

@lazySingleton
class ApiHelper {
  final Dio _dio;

  ApiHelper(this._dio);

  Future<dynamic> get({
    required String path,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final Response response = await _dio.get(
        path,
        queryParameters: queryParameters,
      );
      return response.data;
    } on SocketException {
      return Future.error(NoInternetException());
    } on DioError catch (e) {
      return ApiConfiguration.handleDioErrorResponse(e);
    } catch (e) {
      return Future.error(UnknownException(e));
    }
  }

  Future<dynamic> post({
    required String path,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final Response response = await _dio.post(
        path,
        data: body,
        queryParameters: queryParameters,
      );
      return response.data;
    } on SocketException {
      return Future.error(NoInternetException());
    } on DioError catch (e) {
      return ApiConfiguration.handleDioErrorResponse(e);
    } catch (e) {
      return Future.error(UnknownException(e));
    }
  }

  Future<dynamic> delete({
    required String path,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final Response response = await _dio.delete(
        path,
        data: body,
        queryParameters: queryParameters,
      );
      return response.data;
    } on SocketException {
      return Future.error(NoInternetException());
    } on DioError catch (e) {
      return ApiConfiguration.handleDioErrorResponse(e);
    } catch (e) {
      return Future.error(UnknownException(e));
    }
  }
}
