String parseApiErrorResponse(dynamic data) {
  try {
    String errorMessage = '';
    if (data is Map) {
      if (data['errors'] != null && data['errors'] is Map) {
        var errors = data['errors'] as Map;
        errors.forEach((key, value) {
          if (value is List) {
            errorMessage +=
                value.toString().replaceAll('[', '').replaceAll(']', '');
          } else if (value is String) {
            errorMessage += value;
          }
        });
      } else {
        errorMessage += data['message'].toString();
      }
    } else {
      errorMessage += data.toString();
    }
    return errorMessage;
  } catch (error) {
    return 'Ocorreu um erro ao executar esse processo';
  }
}
