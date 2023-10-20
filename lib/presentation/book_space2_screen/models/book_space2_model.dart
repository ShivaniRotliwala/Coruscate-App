// To parse this JSON data, do
//
//     final bookSpace2Model = bookSpace2ModelFromJson(jsonString);

import 'dart:convert';

BookSpace2Model bookSpace2ModelFromJson(String str) =>
    BookSpace2Model.fromJson(json.decode(str));

String bookSpace2ModelToJson(BookSpace2Model data) =>
    json.encode(data.toJson());

class BookSpace2Model {
  BookSpace2Model({
    this.webinarId,
    this.webinarLink,
    this.webinarDate,
    this.userId,
    this.webinarTime,
    this.webinarDescription,
  });

  int? webinarId;
  String? webinarLink;
  String? webinarDate;
  String? userId;
  String? webinarTime;
  String? webinarDescription;

  factory BookSpace2Model.fromJson(Map<String, dynamic> json) =>
      BookSpace2Model(
        webinarId: json["webinar_id"] == null ? null : json["webinar_id"],
        webinarLink: json["webinar_link"] == null ? null : json["webinar_link"],
        webinarDate: json["webinar_date"] == null ? null : json["webinar_date"],
        userId: json["user_id"] == null ? null : json["user_id"],
        webinarTime: json["webinar_time"] == null ? null : json["webinar_time"],
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
        "webinar_description":
            webinarDescription == null ? null : webinarDescription,
      };
}
