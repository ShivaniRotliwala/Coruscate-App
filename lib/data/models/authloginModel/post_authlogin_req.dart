// To parse this JSON data, do
//
//     final postAuthLoginReq = postAuthLoginReqFromJson(jsonString);

import 'dart:convert';

PostAuthLoginReq postAuthLoginReqFromJson(String str) =>
    PostAuthLoginReq.fromJson(json.decode(str));

String postAuthLoginReqToJson(PostAuthLoginReq data) =>
    json.encode(data.toJson());

class PostAuthLoginReq {
  PostAuthLoginReq({
    this.username,
    this.password,
  });

  String? username;
  String? password;

  factory PostAuthLoginReq.fromJson(Map<String, dynamic> json) =>
      PostAuthLoginReq(
        username: json["username"] == null ? null : json["username"],
        password: json["password"] == null ? null : json["password"],
      );

  Map<String, dynamic> toJson() => {
        "username": username == null ? null : username,
        "password": password == null ? null : password,
      };
}
