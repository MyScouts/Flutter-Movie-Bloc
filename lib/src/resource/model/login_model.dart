import 'dart:developer';

import 'package:flutter_app/src/resource/model/token_model.dart';
import 'package:flutter_app/src/resource/model/user_model.dart';

class LoginModel {
  UserModel? user;
  TokenModel? token;

  LoginModel.formJson(Map<String, dynamic> json) {
    user = UserModel.fromJson(json['data']);
    token = TokenModel.fromJson(json['data']);
  }
}
