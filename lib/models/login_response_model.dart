import 'dart:convert';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
    LoginResponse({
        this.user,
    });

    String? user;

    factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        user: json["user"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
    };
}
