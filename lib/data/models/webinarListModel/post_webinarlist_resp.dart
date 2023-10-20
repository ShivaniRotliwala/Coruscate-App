// To parse this JSON data, do
//
//     final postWebinarListResp = postWebinarListRespFromJson(jsonString);

import 'dart:convert';

PostWebinarListResp postWebinarListRespFromJson(String str) =>
    PostWebinarListResp.fromJson(json.decode(str));

String postWebinarListRespToJson(PostWebinarListResp data) =>
    json.encode(data.toJson());

class PostWebinarListResp {
  PostWebinarListResp({
    this.status,
    this.message,
    this.data,
  });

  String? status;
  String? message;
  Data? data;

  factory PostWebinarListResp.fromJson(Map<String, dynamic> json) =>
      PostWebinarListResp(
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
    this.webinarId,
    this.webinarLink,
    this.webinarDate,
    this.userId,
    this.webinarTime,
    this.addedBy,
    this.createdAt,
    this.updatedAt,
    this.isDeleted,
    this.isActive,
    this.id,
    this.webinarDescription,
  });

  int? webinarId;
  String? webinarLink;
  String? webinarDate;
  String? userId;
  String? webinarTime;
  String? addedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  bool? isDeleted;
  bool? isActive;
  String? id;
  String? webinarDescription;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        webinarId: json["webinar_id"] == null ? null : json["webinar_id"],
        webinarLink: json["webinar_link"] == null ? null : json["webinar_link"],
        webinarDate: json["webinar_date"] == null ? null : json["webinar_date"],
        userId: json["user_id"] == null ? null : json["user_id"],
        webinarTime: json["webinar_time"] == null ? null : json["webinar_time"],
        addedBy: json["addedBy"] == null ? null : json["addedBy"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        isDeleted: json["isDeleted"] == null ? null : json["isDeleted"],
        isActive: json["isActive"] == null ? null : json["isActive"],
        id: json["id"] == null ? null : json["id"],
        webinarDescription: json["webinar_description"] == null
            ? null
            : json["webinar_description"],
      );

  Map<String, dynamic> toJson() => {
        "webinar_id": webinarId == null ? null : webinarId,
        "webinar_link": webinarLink == null ? null : webinarLink,
        "webinar_date": webinarDate == null ? null : webinarDate,
        "user_id": userId == null ? null : userId,
        "webinar_time": webinarTime == null ? null : webinarTime,
        "addedBy": addedBy == null ? null : addedBy,
        "createdAt": createdAt == null ? null : createdAt?.toIso8601String(),
        "updatedAt": updatedAt == null ? null : updatedAt?.toIso8601String(),
        "isDeleted": isDeleted == null ? null : isDeleted,
        "isActive": isActive == null ? null : isActive,
        "id": id == null ? null : id,
        "webinar_description":
            webinarDescription == null ? null : webinarDescription,
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
  dynamic? prev;
  dynamic? next;

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
