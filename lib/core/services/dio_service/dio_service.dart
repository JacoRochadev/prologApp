import 'package:dio/dio.dart';

class DioService {
  static const duration = Duration(milliseconds: 50000);
  final dio = Dio(
    BaseOptions(
      baseUrl: "https://prologapp.com/prolog/",
      headers: {
        'Content-Type': 'application/json',
        'x-prolog-api-token':
            "ePTC2XrkY34WKUCXq48fTxrLCzdV3M35MNpCfBYavabwwY9BJXg",
      },
    ),
  );
}
