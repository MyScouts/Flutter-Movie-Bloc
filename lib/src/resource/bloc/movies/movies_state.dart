import 'package:equatable/equatable.dart';
import 'package:flutter_app/src/resource/model/movie_model.dart';

abstract class MoviesState extends Equatable {
  const MoviesState();
  @override
  List<Object> get props => [];
}

class MovieInitial extends MoviesState {}

class MovieLoadInprogress extends MoviesState {}

class MoviesLoadSuccess extends MoviesState {
  final List<Movie> movies;
  final bool hasReachedMax;

  MoviesLoadSuccess({required this.movies, required this.hasReachedMax});

  MoviesLoadSuccess copyWith({
    required List<Movie> movives,
    required bool hasReachedMax,
  }) {
    return MoviesLoadSuccess(movies: movives, hasReachedMax: hasReachedMax);
  }

  @override
  List<Object> get props => [movies, hasReachedMax];
}

class MoviePageLoadField extends MoviesState {
  final Error error;

  MoviePageLoadField({required this.error});
}
