import 'http_response.dart';

abstract class HttpClient {
  void initOptions();
  Future<HttpResponse> get(
    String url, {
    Map<String, dynamic> queryParameters = const {},
  });
}
