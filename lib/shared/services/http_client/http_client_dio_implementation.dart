import 'package:dio/dio.dart';
import 'package:prolog_app/parameters.dart';
import 'package:prolog_app/shared/clients/http_client/http_client.dart';
import 'package:prolog_app/shared/clients/http_client/http_exception.dart';
import 'package:prolog_app/shared/clients/http_client/http_response.dart';

class HttpClientDioImplementation implements HttpClient {
  final Dio _dio;

  const HttpClientDioImplementation(this._dio);

  @override
  void initOptions() {
    _dio.options = BaseOptions(
      baseUrl: baseUrl,
      headers: {
        'Content-Type': 'application/json',
        'x-prolog-api-token': key,
      },
    );
  }

  @override
  Future<HttpResponse> get(
    String path, {
    Map<String, dynamic> queryParameters = const {},
  }) async {
    try {
      initOptions();
      final result = await _dio.get(
        path,
        queryParameters: queryParameters,
      );
      return HttpResponse(data: result.data);
    } on DioException catch (e) {
      throw HttpException(
        message: e.message ?? '',
        statusCode: e.response?.statusCode ?? 404,
      );
    }
  }
}
