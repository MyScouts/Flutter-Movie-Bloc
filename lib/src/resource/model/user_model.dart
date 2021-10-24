class UserModel {
  int? userId;
  String? type;
  String? name;
  String? email;
  String? emailVerifiedAt;
  String? passwordChangedAt;
  bool? active;
  String? timezone;
  String? lastLoginAt;
  String? lastLoginIp;
  String? toBeLoggedOut;
  String? provider;
  String? verifyPhoneAt;
  String? phonePumber;
  String? avatar;

  UserModel(
      {this.userId,
      this.type,
      this.name,
      this.email,
      this.emailVerifiedAt,
      this.passwordChangedAt,
      this.active,
      this.verifyPhoneAt,
      this.avatar,
      this.toBeLoggedOut,
      this.phonePumber,
      this.lastLoginAt,
      this.lastLoginIp,
      this.provider,
      this.timezone});

  UserModel.fromJson(Map<String, dynamic> json) {
    this.userId = json["id"];
    this.type = json["type"];
    this.email = json["email"];
    this.emailVerifiedAt = json["email_verified_at"];
    this.passwordChangedAt = json["password_changed_at"];
    this.timezone = json["timezone"];
    this.lastLoginAt = json["last_login_at"];
    this.lastLoginIp = json["last_login_ip"];
    // toBeLoggedOut = json["to_be_logged_out"];
    this.provider = json["avatar"];
    this.verifyPhoneAt = json["email"];
    this.phonePumber = json["phone_number"];
    this.avatar = json["email"];
    this.active = json["active"];
  }
}
