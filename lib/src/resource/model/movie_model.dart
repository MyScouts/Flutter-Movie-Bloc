import 'package:flutter_app/src/resource/model/serializable.dart';

class Movie extends Serialzeliable {
  int id;
  bool adult;
  String backdropPath;
  String originalLanguage;
  String originalTitle;
  String overview;
  // String popularity;
  String posterPath;
  String releaseDate;
  String title;
  bool video;
  // String voteAverage;
  // String voteCount;

  Movie({
    required this.adult,
    required this.backdropPath,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    // required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    // required this.voteAverage,
    // required this.voteCount,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      id: json['id'],
      originalLanguage: json['original_language'],
      originalTitle: json['original_title'],
      overview: json['overview'],
      // popularity: json['popularity'],
      posterPath: json['poster_path'],
      releaseDate: json['release_date'],
      title: json['title'],
      video: json['video'],
      // voteAverage: json['vote_average'],
      // voteCount: json['vote_count'],
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'adult': this.adult,
        'backdropPath': this.backdropPath,
        'id': this.id,
        'originalLanguage': this.originalLanguage,
        'originalTitle': this.originalTitle,
        'overview': this.overview,
        // 'popularity': this.popularity,
        'posterPath': this.posterPath,
        'releaseDate': this.releaseDate,
        'title': this.title,
        'video': this.video,
        // 'voteAverage': this.voteAverage,
        // 'voteCount': this.voteCount
      };

  static Movie fromJsonModel(Map<String, dynamic> json) => Movie.fromJson(json);
}
