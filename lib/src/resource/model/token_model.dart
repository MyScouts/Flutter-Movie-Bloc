class TokenModel {
  String? accessToken;
  String? refreshToken;

  TokenModel({this.accessToken, this.refreshToken});

  TokenModel.fromJson(Map<String, dynamic> json) {
    this.accessToken = json['accessToken'];
    this.refreshToken = json['refreshToken'];
  }
}
