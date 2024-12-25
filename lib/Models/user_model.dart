
class UserModel {

  final String token;
  UserModel(this.token);

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(json["token"]);
  Map<String, dynamic> toJson() => {};
}
