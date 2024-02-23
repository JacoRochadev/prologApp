class HttpException {
  final String message;
  final int statusCode;

  const HttpException({
    required this.message,
    required this.statusCode,
  });
}
