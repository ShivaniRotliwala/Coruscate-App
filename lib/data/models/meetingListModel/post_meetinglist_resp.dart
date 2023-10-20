// // To parse this JSON data, do
// //
// //     final postMeetingListResp = postMeetingListRespFromJson(jsonString);

// import 'dart:convert';

// PostMeetingListResp postMeetingListRespFromJson(String str) =>
//     PostMeetingListResp.fromJson(json.decode(str));

// String postMeetingListRespToJson(PostMeetingListResp data) =>
//     json.encode(data.toJson());

// class PostMeetingListResp {
//   PostMeetingListResp({
//     this.status,
//     this.message,
//     this.data,
//   });

//   String? status;
//   String? message;
//   Data? data;

//   factory PostMeetingListResp.fromJson(Map<String, dynamic> json) =>
//       PostMeetingListResp(
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
//     this.data,
//     this.paginator,
//   });

//   List<Datum>? data;
//   Paginator? paginator;

//   factory Data.fromJson(Map<String, dynamic> json) => Data(
//         data: json["data"] == null
//             ? null
//             : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
//         paginator: json["paginator"] == null
//             ? null
//             : Paginator.fromJson(json["paginator"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "data": data == null
//             ? null
//             : List<dynamic>.from(data!.map((x) => x.toJson())),
//         "paginator": paginator == null ? null : paginator?.toJson(),
//       };
// }

// class Datum {
//   Datum({
//     this.spaceId,
//     this.userId,
//     this.meetingTitle,
//     this.meetingDate,
//     this.meetingFrom,
//     this.meetingTo,
//     this.expectedMember,
//     this.meetingId,
//     this.isDeleted,
//     this.id,
//   });

//   String? spaceId;
//   String? userId;
//   String? meetingTitle;
//   String? meetingDate;
//   String? meetingFrom;
//   String? meetingTo;
//   int? expectedMember;
//   int? meetingId;
//   bool? isDeleted;
//   String? id;

//   factory Datum.fromJson(Map<String, dynamic> json) => Datum(
//         spaceId: json["space_id"] == null ? null : json["space_id"],
//         userId: json["user_id"] == null ? null : json["user_id"],
//         meetingTitle:
//             json["meeting_title"] == null ? null : json["meeting_title"],
//         meetingDate: json["meeting_date"] == null ? null : json["meeting_date"],
//         meetingFrom: json["meeting_from"] == null ? null : json["meeting_from"],
//         meetingTo: json["meeting_to"] == null ? null : json["meeting_to"],
//         expectedMember:
//             json["expected_member"] == null ? null : json["expected_member"],
//         meetingId: json["meeting_id"] == null ? null : json["meeting_id"],
//         isDeleted: json["isDeleted"] == null ? null : json["isDeleted"],
//         id: json["id"] == null ? null : json["id"],
//       );

//   Map<String, dynamic> toJson() => {
//         "space_id": spaceId == null ? null : spaceId,
//         "user_id": userId == null ? null : userId,
//         "meeting_title": meetingTitle == null ? null : meetingTitle,
//         "meeting_date": meetingDate == null ? null : meetingDate,
//         "meeting_from": meetingFrom == null ? null : meetingFrom,
//         "meeting_to": meetingTo == null ? null : meetingTo,
//         "expected_member": expectedMember == null ? null : expectedMember,
//         "meeting_id": meetingId == null ? null : meetingId,
//         "isDeleted": isDeleted == null ? null : isDeleted,
//         "id": id == null ? null : id,
//       };
// }

// class Paginator {
//   Paginator({
//     this.itemCount,
//     this.offset,
//     this.perPage,
//     this.pageCount,
//     this.currentPage,
//     this.slNo,
//     this.hasPrevPage,
//     this.hasNextPage,
//     this.prev,
//     this.next,
//   });

//   int? itemCount;
//   int? offset;
//   int? perPage;
//   int? pageCount;
//   int? currentPage;
//   int? slNo;
//   bool? hasPrevPage;
//   bool? hasNextPage;
//   dynamic? prev;
//   dynamic? next;

//   factory Paginator.fromJson(Map<String, dynamic> json) => Paginator(
//         itemCount: json["itemCount"] == null ? null : json["itemCount"],
//         offset: json["offset"] == null ? null : json["offset"],
//         perPage: json["perPage"] == null ? null : json["perPage"],
//         pageCount: json["pageCount"] == null ? null : json["pageCount"],
//         currentPage: json["currentPage"] == null ? null : json["currentPage"],
//         slNo: json["slNo"] == null ? null : json["slNo"],
//         hasPrevPage: json["hasPrevPage"] == null ? null : json["hasPrevPage"],
//         hasNextPage: json["hasNextPage"] == null ? null : json["hasNextPage"],
//         prev: json["prev"],
//         next: json["next"],
//       );

//   Map<String, dynamic> toJson() => {
//         "itemCount": itemCount == null ? null : itemCount,
//         "offset": offset == null ? null : offset,
//         "perPage": perPage == null ? null : perPage,
//         "pageCount": pageCount == null ? null : pageCount,
//         "currentPage": currentPage == null ? null : currentPage,
//         "slNo": slNo == null ? null : slNo,
//         "hasPrevPage": hasPrevPage == null ? null : hasPrevPage,
//         "hasNextPage": hasNextPage == null ? null : hasNextPage,
//         "prev": prev,
//         "next": next,
//       };
// }
// To parse this JSON data, do
//
//     final postMeetingListResp = postMeetingListRespFromJson(jsonString);

// import 'dart:convert';

// PostMeetingListResp postMeetingListRespFromJson(String str) =>
//     PostMeetingListResp.fromJson(json.decode(str));

// String postMeetingListRespToJson(PostMeetingListResp data) =>
//     json.encode(data.toJson());

// class PostMeetingListResp {
//   PostMeetingListResp({
//     this.status,
//     this.message,
//     this.data,
//   });

//   String? status;
//   String? message;
//   Data? data;

//   factory PostMeetingListResp.fromJson(Map<String, dynamic> json) =>
//       PostMeetingListResp(
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
//     this.data,
//     this.paginator,
//   });

//   List<Datum>? data;
//   Paginator? paginator;

//   factory Data.fromJson(Map<String, dynamic> json) => Data(
//         data: json["data"] == null
//             ? null
//             : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
//         paginator: json["paginator"] == null
//             ? null
//             : Paginator.fromJson(json["paginator"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "data": data == null
//             ? null
//             : List<dynamic>.from(data!.map((x) => x.toJson())),
//         "paginator": paginator == null ? null : paginator?.toJson(),
//       };
// }

// class Datum {
//   Datum({
//     this.spaceId,
//     this.userId,
//     this.meetingTitle,
//     this.meetingDate,
//     this.meetingFrom,
//     this.meetingTo,
//     this.expectedMember,
//     this.meetingId,
//     this.meetingDescription,
//     this.isDeleted,
//     this.id,
//   });

//   String? spaceId;
//   String? userId;
//   String? meetingTitle;
//   String? meetingDate;
//   String? meetingFrom;
//   String? meetingTo;
//   int? expectedMember;
//   int? meetingId;
//   String? meetingDescription;
//   bool? isDeleted;
//   String? id;

//   factory Datum.fromJson(Map<String, dynamic> json) => Datum(
//         spaceId: json["space_id"] == null ? null : json["space_id"],
//         userId: json["user_id"] == null ? null : json["user_id"],
//         meetingTitle:
//             json["meeting_title"] == null ? null : json["meeting_title"],
//         meetingDate: json["meeting_date"] == null ? null : json["meeting_date"],
//         meetingFrom: json["meeting_from"] == null ? null : json["meeting_from"],
//         meetingTo: json["meeting_to"] == null ? null : json["meeting_to"],
//         expectedMember:
//             json["expected_member"] == null ? null : json["expected_member"],
//         meetingId: json["meeting_id"] == null ? null : json["meeting_id"],
//         meetingDescription: json["meeting_description"] == null
//             ? null
//             : json["meeting_description"],
//         isDeleted: json["isDeleted"] == null ? null : json["isDeleted"],
//         id: json["id"] == null ? null : json["id"],
//       );

//   Map<String, dynamic> toJson() => {
//         "space_id": spaceId == null ? null : spaceId,
//         "user_id": userId == null ? null : userId,
//         "meeting_title": meetingTitle == null ? null : meetingTitle,
//         "meeting_date": meetingDate == null ? null : meetingDate,
//         "meeting_from": meetingFrom == null ? null : meetingFrom,
//         "meeting_to": meetingTo == null ? null : meetingTo,
//         "expected_member": expectedMember == null ? null : expectedMember,
//         "meeting_id": meetingId == null ? null : meetingId,
//         "meeting_description":
//             meetingDescription == null ? null : meetingDescription,
//         "isDeleted": isDeleted == null ? null : isDeleted,
//         "id": id == null ? null : id,
//       };
// }

// class Paginator {
//   Paginator({
//     this.itemCount,
//     this.offset,
//     this.perPage,
//     this.pageCount,
//     this.currentPage,
//     this.slNo,
//     this.hasPrevPage,
//     this.hasNextPage,
//     this.prev,
//     this.next,
//   });

//   int? itemCount;
//   int? offset;
//   int? perPage;
//   int? pageCount;
//   int? currentPage;
//   int? slNo;
//   bool? hasPrevPage;
//   bool? hasNextPage;
//   dynamic? prev;
//   dynamic? next;

//   factory Paginator.fromJson(Map<String, dynamic> json) => Paginator(
//         itemCount: json["itemCount"] == null ? null : json["itemCount"],
//         offset: json["offset"] == null ? null : json["offset"],
//         perPage: json["perPage"] == null ? null : json["perPage"],
//         pageCount: json["pageCount"] == null ? null : json["pageCount"],
//         currentPage: json["currentPage"] == null ? null : json["currentPage"],
//         slNo: json["slNo"] == null ? null : json["slNo"],
//         hasPrevPage: json["hasPrevPage"] == null ? null : json["hasPrevPage"],
//         hasNextPage: json["hasNextPage"] == null ? null : json["hasNextPage"],
//         prev: json["prev"],
//         next: json["next"],
//       );

//   Map<String, dynamic> toJson() => {
//         "itemCount": itemCount == null ? null : itemCount,
//         "offset": offset == null ? null : offset,
//         "perPage": perPage == null ? null : perPage,
//         "pageCount": pageCount == null ? null : pageCount,
//         "currentPage": currentPage == null ? null : currentPage,
//         "slNo": slNo == null ? null : slNo,
//         "hasPrevPage": hasPrevPage == null ? null : hasPrevPage,
//         "hasNextPage": hasNextPage == null ? null : hasNextPage,
//         "prev": prev,
//         "next": next,
//       };
// }
// To parse this JSON data, do
//
//     final postMeetingListResp = postMeetingListRespFromJson(jsonString);

import 'dart:convert';

PostMeetingListResp postMeetingListRespFromJson(String str) =>
    PostMeetingListResp.fromJson(json.decode(str));

String postMeetingListRespToJson(PostMeetingListResp data) =>
    json.encode(data.toJson());

class PostMeetingListResp {
  PostMeetingListResp({
    this.status,
    this.message,
    this.data,
  });

  String? status;
  String? message;
  Data? data;

  factory PostMeetingListResp.fromJson(Map<String, dynamic> json) =>
      PostMeetingListResp(
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
    this.data,
    this.paginator,
  });

  List<Datum>? data;
  Paginator? paginator;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        data: json["data"] == null
            ? null
            : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        paginator: json["paginator"] == null
            ? null
            : Paginator.fromJson(json["paginator"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "paginator": paginator == null ? null : paginator?.toJson(),
      };
}

class Datum {
  Datum({
    this.spaceId,
    this.userId,
    this.meetingTitle,
    this.meetingDate,
    this.meetingFrom,
    this.meetingTo,
    this.expectedMember,
    this.meetingId,
    this.meetingDescription,
    this.meetingImage,
    this.isDeleted,
    this.id,
  });

  String? spaceId;
  String? userId;
  String? meetingTitle;
  String? meetingDate;
  String? meetingFrom;
  String? meetingTo;
  int? expectedMember;
  int? meetingId;
  String? meetingDescription;
  String? meetingImage;
  bool? isDeleted;
  String? id;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        spaceId: json["space_id"] == null ? null : json["space_id"],
        userId: json["user_id"] == null ? null : json["user_id"],
        meetingTitle:
            json["meeting_title"] == null ? null : json["meeting_title"],
        meetingDate: json["meeting_date"] == null ? null : json["meeting_date"],
        meetingFrom: json["meeting_from"] == null ? null : json["meeting_from"],
        meetingTo: json["meeting_to"] == null ? null : json["meeting_to"],
        expectedMember:
            json["expected_member"] == null ? null : json["expected_member"],
        meetingId: json["meeting_id"] == null ? null : json["meeting_id"],
        meetingDescription: json["meeting_description"] == null
            ? null
            : json["meeting_description"],
        meetingImage:
            json["meeting_image"] == null ? null : json["meeting_image"],
        isDeleted: json["isDeleted"] == null ? null : json["isDeleted"],
        id: json["id"] == null ? null : json["id"],
      );

  Map<String, dynamic> toJson() => {
        "space_id": spaceId == null ? null : spaceId,
        "user_id": userId == null ? null : userId,
        "meeting_title": meetingTitle == null ? null : meetingTitle,
        "meeting_date": meetingDate == null ? null : meetingDate,
        "meeting_from": meetingFrom == null ? null : meetingFrom,
        "meeting_to": meetingTo == null ? null : meetingTo,
        "expected_member": expectedMember == null ? null : expectedMember,
        "meeting_id": meetingId == null ? null : meetingId,
        "meeting_description":
            meetingDescription == null ? null : meetingDescription,
        "meeting_image": meetingImage == null ? null : meetingImage,
        "isDeleted": isDeleted == null ? null : isDeleted,
        "id": id == null ? null : id,
      };
}

class Paginator {
  Paginator({
    this.itemCount,
    this.offset,
    this.perPage,
    this.pageCount,
    this.currentPage,
    this.slNo,
    this.hasPrevPage,
    this.hasNextPage,
    this.prev,
    this.next,
  });

  int? itemCount;
  int? offset;
  int? perPage;
  int? pageCount;
  int? currentPage;
  int? slNo;
  bool? hasPrevPage;
  bool? hasNextPage;
  dynamic prev;
  dynamic next;

  factory Paginator.fromJson(Map<String, dynamic> json) => Paginator(
        itemCount: json["itemCount"] == null ? null : json["itemCount"],
        offset: json["offset"] == null ? null : json["offset"],
        perPage: json["perPage"] == null ? null : json["perPage"],
        pageCount: json["pageCount"] == null ? null : json["pageCount"],
        currentPage: json["currentPage"] == null ? null : json["currentPage"],
        slNo: json["slNo"] == null ? null : json["slNo"],
        hasPrevPage: json["hasPrevPage"] == null ? null : json["hasPrevPage"],
        hasNextPage: json["hasNextPage"] == null ? null : json["hasNextPage"],
        prev: json["prev"],
        next: json["next"],
      );

  Map<String, dynamic> toJson() => {
        "itemCount": itemCount == null ? null : itemCount,
        "offset": offset == null ? null : offset,
        "perPage": perPage == null ? null : perPage,
        "pageCount": pageCount == null ? null : pageCount,
        "currentPage": currentPage == null ? null : currentPage,
        "slNo": slNo == null ? null : slNo,
        "hasPrevPage": hasPrevPage == null ? null : hasPrevPage,
        "hasNextPage": hasNextPage == null ? null : hasNextPage,
        "prev": prev,
        "next": next,
      };
}
