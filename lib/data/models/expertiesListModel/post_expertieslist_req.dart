// To parse this JSON data, do
//
//     final postExpertiesListReq = postExpertiesListReqFromJson(jsonString);

import 'dart:convert';

PostExpertiesListReq postExpertiesListReqFromJson(String str) =>
    PostExpertiesListReq.fromJson(json.decode(str));

String postExpertiesListReqToJson(PostExpertiesListReq data) =>
    json.encode(data.toJson());

class PostExpertiesListReq {
  PostExpertiesListReq({
    this.expertiesId,
    this.expertiesName,
    this.userId,
  });

  int? expertiesId;
  String? expertiesName;
  String? userId;

  factory PostExpertiesListReq.fromJson(Map<String, dynamic> json) =>
      PostExpertiesListReq(
        expertiesId: json["experties_id"] == null ? null : json["experties_id"],
        expertiesName:
            json["experties_name"] == null ? null : json["experties_name"],
        userId: json["user_id"] == null ? null : json["user_id"],
      );

  Map<String, dynamic> toJson() => {
        "experties_id": expertiesId == null ? null : expertiesId,
        "experties_name": expertiesName == null ? null : expertiesName,
        "user_id": userId == null ? null : userId,
      };
}
