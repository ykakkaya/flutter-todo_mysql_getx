// To parse this JSON data, do
//
//     final registerModel = registerModelFromJson(jsonString);

import 'dart:convert';

RegisterModel registerModelFromJson(String str) => RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {
  String? userName;
  String? userEmail;
  String? userPassword;

  RegisterModel({
    this.userName,
    this.userEmail,
    this.userPassword,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        userName: json["user_name"],
        userEmail: json["user_email"],
        userPassword: json["user_password"],
      );

  Map<String, dynamic> toJson() => {
        "user_name": userName,
        "user_email": userEmail,
        "user_password": userPassword,
      };
}
