// // // To parse this JSON data, do
// // //
// // //     final postMeetingListReq = postMeetingListReqFromJson(jsonString);

// // import 'dart:convert';

// // PostMeetingListReq postMeetingListReqFromJson(String str) =>
// //     PostMeetingListReq.fromJson(json.decode(str));

// // String postMeetingListReqToJson(PostMeetingListReq data) =>
// //     json.encode(data.toJson());

// // class PostMeetingListReq {
// //   PostMeetingListReq({
// //     this.spaceId,
// //     this.userId,
// //     this.meetingTitle,
// //     this.meetingDate,
// //     this.meetingFrom,
// //     this.meetingTo,
// //     this.expectedMember,
// //     this.meetingId,
// //   });

// //   String? spaceId;
// //   String? userId;
// //   String? meetingTitle;
// //   String? meetingDate;
// //   String? meetingFrom;
// //   String? meetingTo;
// //   int? expectedMember;
// //   int? meetingId;

// //   factory PostMeetingListReq.fromJson(Map<String, dynamic> json) =>
// //       PostMeetingListReq(
// //         spaceId: json["space_id"] == null ? null : json["space_id"],
// //         userId: json["user_id"] == null ? null : json["user_id"],
// //         meetingTitle:
// //             json["meeting_title"] == null ? null : json["meeting_title"],
// //         meetingDate: json["meeting_date"] == null ? null : json["meeting_date"],
// //         meetingFrom: json["meeting_from"] == null ? null : json["meeting_from"],
// //         meetingTo: json["meeting_to"] == null ? null : json["meeting_to"],
// //         expectedMember:
// //             json["expected_member"] == null ? null : json["expected_member"],
// //         meetingId: json["meeting_id"] == null ? null : json["meeting_id"],
// //       );

// //   Map<String, dynamic> toJson() => {
// //         "space_id": spaceId == null ? null : spaceId,
// //         "user_id": userId == null ? null : userId,
// //         "meeting_title": meetingTitle == null ? null : meetingTitle,
// //         "meeting_date": meetingDate == null ? null : meetingDate,
// //         "meeting_from": meetingFrom == null ? null : meetingFrom,
// //         "meeting_to": meetingTo == null ? null : meetingTo,
// //         "expected_member": expectedMember == null ? null : expectedMember,
// //         "meeting_id": meetingId == null ? null : meetingId,
// //       };
// // }
// // To parse this JSON data, do
// //
// //     final postMeetingListReq = postMeetingListReqFromJson(jsonString);

// // To parse this JSON data, do
// //
// //     final postMeetingListReq = postMeetingListReqFromJson(jsonString);

// import 'dart:convert';

// PostMeetingListReq postMeetingListReqFromJson(String str) =>
//     PostMeetingListReq.fromJson(json.decode(str));

// String postMeetingListReqToJson(PostMeetingListReq data) =>
//     json.encode(data.toJson());

// class PostMeetingListReq {
//   PostMeetingListReq({
//     this.spaceId,
//     this.userId,
//     this.meetingTitle,
//     this.meetingDate,
//     this.meetingFrom,
//     this.meetingTo,
//     this.expectedMember,
//     this.meetingId,
//     this.meetingDescription,
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

//   factory PostMeetingListReq.fromJson(Map<String, dynamic> json) =>
//       PostMeetingListReq(
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
//       };
// }
// To parse this JSON data, do
//
//     final postMeetingListReq = postMeetingListReqFromJson(jsonString);

import 'dart:convert';

PostMeetingListReq postMeetingListReqFromJson(String str) =>
    PostMeetingListReq.fromJson(json.decode(str));

String postMeetingListReqToJson(PostMeetingListReq data) =>
    json.encode(data.toJson());

class PostMeetingListReq {
  PostMeetingListReq({
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

  factory PostMeetingListReq.fromJson(Map<String, dynamic> json) =>
      PostMeetingListReq(
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
      };
}
