// To parse this JSON data, do
//
//     final postUserSpaceListResp = postUserSpaceListRespFromJson(jsonString);

import 'dart:convert';

PostSpaceListResp postUserSpaceListRespFromJson(String str) =>
    PostSpaceListResp.fromJson(json.decode(str));

String postSpaceListRespToJson(PostSpaceListResp data) =>
    json.encode(data.toJson());

class PostSpaceListResp {
  PostSpaceListResp({
    this.status,
    this.message,
    this.data,
  });

  String? status;
  String? message;
  Data? data;

  factory PostSpaceListResp.fromJson(Map<String, dynamic> json) =>
      PostSpaceListResp(
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
    this.spaceName,
    this.spaceImage,
    this.totalMemberCapacity,
    this.spaceType,
    this.addedBy,
    this.createdAt,
    this.updatedAt,
    this.isDeleted,
    this.isActive,
    this.id,
  });

  int? spaceId;
  String? spaceName;
  String? spaceImage;
  int? totalMemberCapacity;
  String? spaceType;
  String? addedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  bool? isDeleted;
  bool? isActive;
  String? id;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        spaceId: json["space_id"] == null ? null : json["space_id"],
        spaceName: json["space_name"] == null ? null : json["space_name"],
        spaceImage: json["space_image"] == null ? null : json["space_image"],
        totalMemberCapacity: json["total_member_capacity"] == null
            ? null
            : json["total_member_capacity"],
        spaceType: json["space_type"] == null ? null : json["space_type"],
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
      );

  Map<String, dynamic> toJson() => {
        "space_id": spaceId == null ? null : spaceId,
        "space_name": spaceName == null ? null : spaceName,
        "space_image": spaceImage == null ? null : spaceImage,
        "total_member_capacity":
            totalMemberCapacity == null ? null : totalMemberCapacity,
        "space_type": spaceType == null ? null : spaceType,
        "addedBy": addedBy == null ? null : addedBy,
        "createdAt": createdAt == null ? null : createdAt?.toIso8601String(),
        "updatedAt": updatedAt == null ? null : updatedAt?.toIso8601String(),
        "isDeleted": isDeleted == null ? null : isDeleted,
        "isActive": isActive == null ? null : isActive,
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
