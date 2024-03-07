import '../api/end_ponits.dart';

class ErrorModel {
 // final int status;
  final String message;

  ErrorModel({ required this.message});
  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorModel(

      message: jsonData[ApiKey.message],
    );
  }
}
