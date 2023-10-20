// // To parse this JSON data, do
// //
// //     final postUserInfoListResp = postUserInfoListRespFromJson(jsonString);

// import 'dart:convert';

// PostUserInfoListResp postUserInfoListRespFromJson(String str) =>
//     PostUserInfoListResp.fromJson(json.decode(str));

// String postUserInfoListRespToJson(PostUserInfoListResp data) =>
//     json.encode(data.toJson());

// class PostUserInfoListResp {
//   PostUserInfoListResp({
//     this.status,
//     this.message,
//     this.data,
//   });

//   String? status;
//   String? message;
//   Data? data;

//   factory PostUserInfoListResp.fromJson(Map<String, dynamic> json) =>
//       PostUserInfoListResp(
//         status: json["status"] == null ? null : json["status"],
//         message: json["message"] == null ? null : json["message"],
//         data: json["data"] == null ? null : Data.fromJson(json["data"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "status": status == null ? null : status,
//         "message": message == null ? null : message,
//         "data": data == null ? null : data?.toJson(),
//       };
// }

// class Data {
//   Data({
//     this.userName,
//     this.email,
//     this.userCompany,
//     this.designation,
//     this.experties,
//     this.dataMobileNo,
//     this.userId,
//     this.mobileNo,
//     this.username,
//     this.userType,
//     this.loginRetryLimit,
//     this.isDeleted,
//     this.id,
//   });

//   String? userName;
//   String? email;
//   String? userCompany;
//   String? designation;
//   String? experties;
//   String? dataMobileNo;
//   int? userId;
//   String? mobileNo;
//   String? username;
//   int? userType;
//   int? loginRetryLimit;
//   bool? isDeleted;
//   String? id;

//   factory Data.fromJson(Map<String, dynamic> json) => Data(
//         userName: json["user_name"] == null ? null : json["user_name"],
//         email: json["email"] == null ? null : json["email"],
//         userCompany: json["user_company"] == null ? null : json["user_company"],
//         designation: json["designation"] == null ? null : json["designation"],
//         experties: json["experties"] == null ? null : json["experties"],
//         dataMobileNo: json["mobile_no"] == null ? null : json["mobile_no"],
//         userId: json["user_id"] == null ? null : json["user_id"],
//         mobileNo: json["mobileNo"] == null ? null : json["mobileNo"],
//         username: json["username"] == null ? null : json["username"],
//         userType: json["userType"] == null ? null : json["userType"],
//         loginRetryLimit:
//             json["loginRetryLimit"] == null ? null : json["loginRetryLimit"],
//         isDeleted: json["isDeleted"] == null ? null : json["isDeleted"],
//         id: json["id"] == null ? null : json["id"],
//       );

//   Map<String, dynamic> toJson() => {
//         "user_name": userName == null ? null : userName,
//         "email": email == null ? null : email,
//         "user_company": userCompany == null ? null : userCompany,
//         "designation": designation == null ? null : designation,
//         "experties": experties == null ? null : experties,
//         "mobile_no": dataMobileNo == null ? null : dataMobileNo,
//         "user_id": userId == null ? null : userId,
//         "mobileNo": mobileNo == null ? null : mobileNo,
//         "username": username == null ? null : username,
//         "userType": userType == null ? null : userType,
//         "loginRetryLimit": loginRetryLimit == null ? null : loginRetryLimit,
//         "isDeleted": isDeleted == null ? null : isDeleted,
//         "id": id == null ? null : id,
//       };
// }
// To parse this JSON data, do
//
//     final postUserInfoListResp = postUserInfoListRespFromJson(jsonString);

import 'dart:convert';

PostUserInfoListResp postUserInfoListRespFromJson(String str) =>
    PostUserInfoListResp.fromJson(json.decode(str));

String postUserInfoListRespToJson(PostUserInfoListResp data) =>
    json.encode(data.toJson());

class PostUserInfoListResp {
  PostUserInfoListResp({
    this.status,
    this.message,
    this.data,
  });

  String? status;
  String? message;
  Data? data;

  factory PostUserInfoListResp.fromJson(Map<String, dynamic> json) =>
      PostUserInfoListResp(
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
    this.userName,
    this.email,
    this.userCompany,
    this.designation,
    this.experties,
    this.dataMobileNo,
    this.userId,
    this.userImage,
    this.mobileNo,
    this.username,
    this.userType,
    this.id,
    this.isDeleted,
  });

  String? userName;
  String? email;
  String? userCompany;
  String? designation;
  String? experties;
  String? dataMobileNo;
  int? userId;
  String? userImage;
  String? mobileNo;
  String? username;
  int? userType;
  String? id;
  bool? isDeleted;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        userName: json["user_name"] == null ? null : json["user_name"],
        email: json["email"] == null ? null : json["email"],
        userCompany: json["user_company"] == null ? null : json["user_company"],
        designation: json["designation"] == null ? null : json["designation"],
        experties: json["experties"] == null ? null : json["experties"],
        dataMobileNo: json["mobile_no"] == null ? null : json["mobile_no"],
        userId: json["user_id"] == null ? null : json["user_id"],
        userImage: json["user_image"] == null ? null : json["user_image"],
        mobileNo: json["mobileNo"] == null ? null : json["mobileNo"],
        username: json["username"] == null ? null : json["username"],
        userType: json["userType"] == null ? null : json["userType"],
        id: json["id"] == null ? null : json["id"],
        isDeleted: json["isDeleted"] == null ? null : json["isDeleted"],
      );

  Map<String, dynamic> toJson() => {
        "user_name": userName == null ? null : userName,
        "email": email == null ? null : email,
        "user_company": userCompany == null ? null : userCompany,
        "designation": designation == null ? null : designation,
        "experties": experties == null ? null : experties,
        "mobile_no": dataMobileNo == null ? null : dataMobileNo,
        "user_id": userId == null ? null : userId,
        "user_image": userImage == null ? null : userImage,
        "mobileNo": mobileNo == null ? null : mobileNo,
        "username": username == null ? null : username,
        "userType": userType == null ? null : userType,
        "id": id == null ? null : id,
        "isDeleted": isDeleted == null ? null : isDeleted,
      };
}
