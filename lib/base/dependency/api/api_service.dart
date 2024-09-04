import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ApiService {
  final Ref ref;
  late final Dio dio;
  static const _timeout = Duration(seconds: 3);
  ApiService(this.ref) {
    dio = Dio(BaseOptions(
        baseUrl: '',
        connectTimeout: _timeout,
        receiveTimeout: _timeout,
        sendTimeout: _timeout));
  }

  void dispose() {
    dio.close();
  }

  void addInterceptors(List<Interceptor> interceptors) {
    dio.interceptors.addAll(interceptors);
  }

  Future<(Response?, Object?)> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
      );

      return (response, null);
    } catch (e) {
      if (e is DioException) {
        return (null, e.error);
      }

      return (null, e);
    }
  }

  Future<(Response?, Object?)> post(
    String path, {
    Object? data,
  }) async {
    try {
      final response = await dio.post(
        path,
        data: data,
      );
      return (response, null);
    } catch (e) {
      if (e is DioException) {
        return (null, e.error);
      }

      return (null, e);
    }
  }

  Future<(Response?, Object?)> put(
    String path, {
    Object? data,
  }) async {
    try {
      final response = await dio.put(
        path,
        data: data,
      );

      return (response, null);
    } catch (e) {
      if (e is DioException) {
        return (null, e.error);
      }

      return (null, e);
    }
  }

  Future<(Response?, Object?)> delete(
    String path, {
    Object? data,
  }) async {
    try {
      final response = await dio.delete(
        path,
        data: data,
      );

      return (response, null);
    } catch (e) {
      if (e is DioException) {
        return (null, e.error);
      }

      return (null, e);
    }
  }
}
