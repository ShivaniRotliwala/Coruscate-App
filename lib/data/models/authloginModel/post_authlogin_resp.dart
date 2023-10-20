// To parse this JSON data, do
//
//     final postAuthLoginResp = postAuthLoginRespFromJson(jsonString);

import 'dart:convert';

PostAuthLoginResp postAuthLoginRespFromJson(String str) =>
    PostAuthLoginResp.fromJson(json.decode(str));

String postAuthLoginRespToJson(PostAuthLoginResp data) =>
    json.encode(data.toJson());

class PostAuthLoginResp {
  PostAuthLoginResp({
    this.status,
    this.message,
    this.data,
  });

  String? status;
  String? message;
  Data? data;

  factory PostAuthLoginResp.fromJson(Map<String, dynamic> json) =>
      PostAuthLoginResp(
        status: json["status"] == null ? null : json["status"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "message": message == null ? null : message,
        "data": data == null ? null : data?.toJson(),
      };
}

class Data {
  Data({
    this.username,
    this.isDeleted,
    this.loginRetryLimit,
    this.userType,
    this.userId,
    this.id,
    this.token,
  });

  String? username;
  bool? isDeleted;
  int? loginRetryLimit;
  int? userType;
  int? userId;
  String? id;
  String? token;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        username: json["username"] == null ? null : json["username"],
        isDeleted: json["isDeleted"] == null ? null : json["isDeleted"],
        loginRetryLimit:
            json["loginRetryLimit"] == null ? null : json["loginRetryLimit"],
        userType: json["userType"] == null ? null : json["userType"],
        userId: json["user_id"] == null ? null : json["user_id"],
        id: json["id"] == null ? null : json["id"],
        token: json["token"] == null ? null : json["token"],
      );

  Map<String, dynamic> toJson() => {
        "username": username == null ? null : username,
        "isDeleted": isDeleted == null ? null : isDeleted,
        "loginRetryLimit": loginRetryLimit == null ? null : loginRetryLimit,
        "userType": userType == null ? null : userType,
        "user_id": userId == null ? null : userId,
        "id": id == null ? null : id,
        "token": token == null ? null : token,
      };
}
