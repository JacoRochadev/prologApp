import 'package:dio/dio.dart';
import 'package:prolog_app/parameters.dart';

class DioService {
  static const duration = Duration(milliseconds: 50000);
  final dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      headers: {
        'Content-Type': 'application/json',
        'x-prolog-api-token': key,
      },
    ),
  );
}
