import 'package:flutter_app/src/resource/model/base_response_model.dart';

class ResourceResponseModel<T> extends BaseResponseModel {
  T? data;
  ResourceResponseModel({
    String? message,
    bool? success,
    this.data,
  }) : super(message: message, success: success);

  factory ResourceResponseModel.fromJson(
      Map<String, dynamic> json, Function(Map<String, dynamic>) create) {
    return ResourceResponseModel<T>(
        success: json["success"],
        message: json["message"],
        data: create(json["data"]));
  }
}
