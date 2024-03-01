class EndPoint {
  static String baseUrl = "https://fallyguardapi.up.railway.app/";
  static String signIn = "api/v1/caregivers/login";
  static String signUp = "api/v1/caregivers/register";
  static String getUserDataEndPoint(id) {
    return "user/get-user/$id";
  }
}

class ApiKey {
  static String status = "status";
  static String errorMessage = "ErrorMessage";
  static String email = "email";
  static String password = "password";
  static String token = "token";
  static String message = "message";
  static String id = "id";
  static String name = "name";
  static String gender = "gender";
  static String phone = "phone";
  static String photo = "photo";
  static String confirmPassword = "confirmPassword";
  static String address = "address";
  //static String profilePic = "profilePic";
}
