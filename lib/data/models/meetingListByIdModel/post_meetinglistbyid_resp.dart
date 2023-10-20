// To parse this JSON data, do
//
//     final postMeetingListByIdResp = postMeetingListByIdRespFromJson(jsonString);

import 'dart:convert';

PostMeetingListByIdResp postMeetingListByIdRespFromJson(String str) =>
    PostMeetingListByIdResp.fromJson(json.decode(str));

String postMeetingListByIdRespToJson(PostMeetingListByIdResp data) =>
    json.encode(data.toJson());

class PostMeetingListByIdResp {
  PostMeetingListByIdResp({
    this.status,
    this.message,
    this.data,
  });

  String? status;
  String? message;
  Data? data;

  factory PostMeetingListByIdResp.fromJson(Map<String, dynamic> json) =>
      PostMeetingListByIdResp(
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
    this.spaceId,
    this.userId,
    this.meetingTitle,
    this.meetingDate,
    this.meetingFrom,
    this.meetingTo,
    this.expectedMember,
    this.meetingId,
    this.meetingDescription,
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
  bool? isDeleted;
  String? id;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
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
        "isDeleted": isDeleted == null ? null : isDeleted,
        "id": id == null ? null : id,
      };
}
