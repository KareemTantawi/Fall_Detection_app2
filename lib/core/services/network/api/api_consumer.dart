abstract class ApiConsumer {
  Future<dynamic> get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  });
  Future<dynamic> post(
    String path, {
    String token,
    Object? data,
    Map<String, dynamic>? queryParameters,
    bool isFormData = false,
  });
  Future<dynamic> patch(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    bool isFormData = false,
  });

  Future<dynamic> delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    bool isFormData = false,
  });

  Future<dynamic> put(
    // String token,
    String path, {
    String token,
    Object? data,
    Map<String, dynamic>? queryParameters,
    bool isFormData = false,
  });
}
