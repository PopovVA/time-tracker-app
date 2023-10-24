import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio_logger/dio_logger.dart';

abstract class IApiRepository<T> {
  Future<void> init();
  Future<T> get({
    required String path,
    Map<String, dynamic>? params,
  });

  //ToDo Implement Post, Put, Delete and so on.
}

final restApiRepositoryProvider =
    Provider<IApiRepository>((ref) => RestApiRepositoryImpl());

class RestApiRepositoryImpl implements IApiRepository {
  late final Dio _dio;

  @override
  Future<Response> get({
    required String path,
    Map<String, dynamic>? params,
  }) async {
    final response = await _dio.get(
      path,
      options: Options(
        contentType: 'application/json',
        responseType: ResponseType.json,
      ),
    );
    return response;
  }

  @override
  Future<void> init() async {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://wookie.codesubmit.io',
        headers: {
          'Content-Type': 'application/json',
        },
        responseType: ResponseType.json,
        contentType: 'application/json',
        connectTimeout: 30000,
        receiveTimeout: 30000,
        sendTimeout: 30000,
      ),
    );
    _dio.interceptors.add(dioLoggerInterceptor);
  }
}
