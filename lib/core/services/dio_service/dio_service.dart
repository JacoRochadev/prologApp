import 'package:dio/dio.dart';
import 'package:prolog_app/parameters.dart';

class DioService {
  static const duration = Duration(milliseconds: 60000);
  final dio = Dio(
    BaseOptions(
      connectTimeout: duration,
      baseUrl: baseUrl,
      headers: {
        'Content-Type': 'application/json',
        'x-prolog-api-token': key,
      },
    ),
  );
}
