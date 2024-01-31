import 'package:dio/dio.dart';

class DioService {
  static const duration = Duration(milliseconds: 50000);
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://prologapp.com/prolog/api/v3/tires',
      headers: {
        'Content-Type': 'application/json',
        'x-prolog-api-token':
            'ePTC2XrkY34WKUCXq48fTxrLCzdV3M35MNpCfBYavabwwY9BJXg',
      },
    ),
  );
}
