import 'package:flutter_app/src/resource/model/serializable.dart';

class ApiResponse<T extends Serialzeliable> extends Serialzeliable {
  int? page;
  int? totalPage;
  int? totalResults;
  List<T>? resutls;

  ApiResponse({
    this.page,
    this.resutls,
    this.totalPage,
    this.totalResults,
  });

  factory ApiResponse.fromJson(
      Map<String, dynamic> json, Function fromJsonModel) {
    final itemsJson = json['results'].cast<Map<String, dynamic>>();
    return ApiResponse<T>(
        page: json['page'],
        totalPage: json['total_pages'],
        totalResults: json['total_results'],
        resutls:
            new List<T>.from(itemsJson.map((item) => fromJsonModel(item))));
  }

  @override
  Map<String, dynamic> toJson() => {
        'page': this.page,
        'totalPage': this.totalPage,
        'totalResults': this.totalResults,
        'resutls': this.resutls
      };
}
