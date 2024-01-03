// To parse this JSON data, do
//
//     final registerResponseModel = registerResponseModelFromJson(jsonString);

import 'dart:convert';

RegisterResponseModel registerResponseModelFromJson(String str) => RegisterResponseModel.fromJson(json.decode(str));

String registerResponseModelToJson(RegisterResponseModel data) => json.encode(data.toJson());

class RegisterResponseModel {
  bool? status;
  String? message;

  RegisterResponseModel({
    this.status,
    this.message,
  });

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) => RegisterResponseModel(
        status: json["STATUS"],
        message: json["MESSAGE"],
      );

  Map<String, dynamic> toJson() => {
        "STATUS": status,
        "MESSAGE": message,
      };
}
