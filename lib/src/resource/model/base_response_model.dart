class BaseResponseModel {
  int? status;
  String? message;
  bool? success;
  BaseResponseModel({this.status, this.success, this.message});
  fromJson(Map<String, dynamic> parsedJson) {
    return BaseResponseModel(
        message: parsedJson['message'],
        status: parsedJson['status'],
        success: parsedJson['success']);
  }
}
