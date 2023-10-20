// To parse this JSON data, do
//
//     final postUserInfoListReq = postUserInfoListReqFromJson(jsonString);

import 'dart:convert';

PostUserInfoListReq postUserInfoListReqFromJson(String str) =>
    PostUserInfoListReq.fromJson(json.decode(str));

String postUserInfoListReqToJson(PostUserInfoListReq data) =>
    json.encode(data.toJson());

class PostUserInfoListReq {
  PostUserInfoListReq({
    this.userName,
    this.email,
    this.userCompany,
    this.designation,
    this.experties,
    this.MobileNo,
    this.userId,
    this.userImage,
    this.mobileNo,
    this.username,
    this.userType,
  });

  String? userName;

  String? email;
  String? userCompany;
  String? designation;
  String? experties;
  String? MobileNo;
  int? userId;
  String? userImage;
  String? mobileNo;
  String? username;
  int? userType;

  factory PostUserInfoListReq.fromJson(Map<String, dynamic> json) =>
      PostUserInfoListReq(
        userName: json["user_name"] == null ? null : json["user_name"],
        email: json["email"] == null ? null : json["email"],
        userCompany: json["user_company"] == null ? null : json["user_company"],
        designation: json["designation"] == null ? null : json["designation"],
        experties: json["experties"] == null ? null : json["experties"],
        MobileNo: json["mobile_no"] == null ? null : json["mobile_no"],
        userId: json["user_id"] == null ? null : json["user_id"],
        userImage: json["user_image"] == null ? null : json["user_image"],
        mobileNo: json["mobileNo"] == null ? null : json["mobileNo"],
        username: json["username"] == null ? null : json["username"],
        userType: json["userType"] == null ? null : json["userType"],
      );

  Map<String, dynamic> toJson() => {
        "user_name": userName == null ? null : userName,
        "email": email == null ? null : email,
        "user_company": userCompany == null ? null : userCompany,
        "designation": designation == null ? null : designation,
        "experties": experties == null ? null : experties,
        "mobile_no": MobileNo == null ? null : MobileNo,
        "user_id": userId == null ? null : userId,
        "user_image": userImage == null ? null : userImage,
        "mobileNo": mobileNo == null ? null : mobileNo,
        "username": username == null ? null : username,
        "userType": userType == null ? null : userType,
      };
}
