import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_app/src/configs/configs.dart';
import 'package:flutter_app/src/resource/model/api_response.dart';
import 'package:flutter_app/src/resource/model/base_response_model.dart';
import 'package:flutter_app/src/resource/model/login_model.dart';
import 'package:flutter_app/src/utils/utils.dart';

import '../resource.dart';

class AuthRepository {
  AuthRepository._();

  static AuthRepository? _instance;

  factory AuthRepository() {
    if (_instance == null) _instance = AuthRepository._();
    return _instance!;
  }

  // Future<ApiResponse<LoginModel>> getLoginRespons() async {
  //   // try {
  //   String api = AppEndpoint.BASE_URL_BOOKING + "/auth/login";
  //   Response response = await AppClients(baseUrl: api)
  //       .post(api, data: {'email': "user@user.com", "password": 'secret'});
  //   log('test: ${response.data}');
  //   ApiResponse<LoginModel> result =
  //       ApiResponse<LoginModel>.fromJson(response.data);
  //   return result;
  // }
}
