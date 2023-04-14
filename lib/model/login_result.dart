import 'user.dart';

class LoginResult {
  final String? token;
  final User? user;

  const LoginResult({
    this.token,
    this.user,
  });

  factory LoginResult.fromJson(Map<String, dynamic> json) => LoginResult(
        token: json['token'],
        user: User.fromJson(json['user']),
      );

  Map<String, dynamic> toJson() =>
      {'token': this.token, 'user': this.user?.toJson()};
}
