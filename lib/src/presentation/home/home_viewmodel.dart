import 'dart:developer';

import 'package:flutter_app/src/presentation/base/base.dart';
import 'package:flutter_app/src/resource/model/api_response.dart';
import 'package:flutter_app/src/resource/model/movie_model.dart';
import 'package:flutter_app/src/resource/reponsitory/movie_responsitory.dart';

class HomeViewModel extends BaseViewModel {
  late MovieResponsitory _responsitory;
  ApiResponse<Movie> response = new ApiResponse<Movie>();
  int currenPage = 1;
  bool hasLoadMore = false;
  List<Movie> movies = [];
  void initial() async {
    _responsitory = new MovieResponsitory();
    await fetchData(currenPage);
  }

  fetchData(page) async {
    response = await _responsitory.getMovieResponsitory(page: page);
    movies.addAll(response.resutls!);
    log("Movies: ${movies.length}");
    notifyListeners();
  }

  onLoadMore() async {
    if (currenPage < response.totalPage!) {
      await fetchData(currenPage++);
    }
  }
}
