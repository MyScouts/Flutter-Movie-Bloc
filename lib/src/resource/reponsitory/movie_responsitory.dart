import 'dart:developer';

import 'package:flutter_app/src/resource/model/api_response.dart';
import 'package:flutter_app/src/resource/model/movie_model.dart';
import 'package:flutter_app/src/utils/utils.dart';
import 'package:dio/dio.dart';

class MovieResponsitory {
  MovieResponsitory._();

  static MovieResponsitory? _instance;

  factory MovieResponsitory() {
    if (_instance == null) _instance = MovieResponsitory._();
    return _instance!;
  }

  Future<ApiResponse<Movie>> getMovieResponsitory({page = 1}) async {
    String url = "/movie/now_playing";
    try {
      Response response = await AppClients().get(url);
      ApiResponse<Movie> result =
          ApiResponse<Movie>.fromJson(response.data, Movie.fromJsonModel);
      return result;
    } catch (e) {
      return new ApiResponse<Movie>();
    }
  }
}
