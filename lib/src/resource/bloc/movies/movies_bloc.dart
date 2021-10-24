import 'dart:developer';

import 'package:flutter_app/src/resource/bloc/movies/movies_evnents.dart';
import 'package:flutter_app/src/resource/bloc/movies/movies_state.dart';
import 'package:flutter_app/src/resource/reponsitory/movie_responsitory.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final _moviesResponsitory = new MovieResponsitory();
  MoviesBloc() : super(MovieInitial());

  int pageValue = 1;

  @override
  Stream<MoviesState> mapEventToState(MoviesEvent event) async* {
    final currentState = state;

    log("currentState: ${event}");
    //  && _hasReachedMax(currentState)
    if (event is MovieFetchData) {
      try {
        if (currentState is MovieInitial) {
          yield MovieLoadInprogress();
          final moviePageResponse =
              await _moviesResponsitory.getMovieResponsitory(page: pageValue);
          _updatePageValue(moviePageResponse.page!);
          if (moviePageResponse.totalResults! > 0) {
            yield MoviesLoadSuccess(
                movies: moviePageResponse.resutls!, hasReachedMax: false);
          } else {
            yield MoviesLoadSuccess(
              movies: [],
              hasReachedMax: true,
            );
          }
          return;
        }

        if (currentState is MoviesLoadSuccess) {
          final moviePageResponse =
              await _moviesResponsitory.getMovieResponsitory(page: pageValue);
          if (moviePageResponse.totalResults! > 0) {
            log("currentState movies: ${currentState.movies.length}");
            yield MoviesLoadSuccess(
                movies: currentState.movies + moviePageResponse.resutls!,
                hasReachedMax: false);
            _updatePageValue(moviePageResponse.page!);
          } else {
            yield MoviesLoadSuccess(
              movies: [],
              hasReachedMax: true,
            );
          }
        }
      } on Error catch (e) {
        yield MoviePageLoadField(error: e);
      }
    }
  }

  void _updatePageValue(int page) {
    if (page >= 1) pageValue = page + 1;
  }

  bool _hasReachedMax(MoviesState state) =>
      state is MoviesLoadSuccess && state.hasReachedMax;
}
