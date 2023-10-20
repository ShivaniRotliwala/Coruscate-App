// // To parse this JSON data, do
// //
// //     final postWebinarListReq = postWebinarListReqFromJson(jsonString);

// import 'dart:convert';

// PostWebinarListReq postWebinarListReqFromJson(String str) =>
//     PostWebinarListReq.fromJson(json.decode(str));

// String postWebinarListReqToJson(PostWebinarListReq data) =>
//     json.encode(data.toJson());

// class PostWebinarListReq {
//   PostWebinarListReq({
//     this.query,
//     this.options,
//     this.isCountOnly,
//   });

//   Query? query;
//   Options? options;
//   bool? isCountOnly;

//   factory PostWebinarListReq.fromJson(Map<String, dynamic> json) =>
//       PostWebinarListReq(
//         query: json["query"] == null ? null : Query.fromJson(json["query"]),
//         options:
//             json["options"] == null ? null : Options.fromJson(json["options"]),
//         isCountOnly: json["isCountOnly"] == null ? null : json["isCountOnly"],
//       );

//   Map<String, dynamic> toJson() => {
//         "query": query == null ? null : query!.toJson(),
//         "options": options == null ? null : options!.toJson(),
//         "isCountOnly": isCountOnly == null ? null : isCountOnly,
//       };
// }

// class Options {
//   Options({
//     this.collation,
//     this.sort,
//     this.populate,
//     this.projection,
//     this.lean,
//     this.leanWithId,
//     this.offset,
//     this.page,
//     this.limit,
//     this.pagination,
//     this.useEstimatedCount,
//     this.useCustomCountFn,
//     this.forceCountFn,
//     this.read,
//     this.options,
//   });

//   String? collation;
//   String? sort;
//   String? populate;
//   String? projection;
//   bool? lean;
//   bool? leanWithId;
//   int? offset;
//   int? page;
//   int? limit;
//   bool? pagination;
//   bool? useEstimatedCount;
//   bool? useCustomCountFn;
//   bool? forceCountFn;
//   Query? read;
//   Query? options;

//   factory Options.fromJson(Map<String, dynamic> json) => Options(
//         collation: json["collation"] == null ? null : json["collation"],
//         sort: json["sort"] == null ? null : json["sort"],
//         populate: json["populate"] == null ? null : json["populate"],
//         projection: json["projection"] == null ? null : json["projection"],
//         lean: json["lean"] == null ? null : json["lean"],
//         leanWithId: json["leanWithId"] == null ? null : json["leanWithId"],
//         offset: json["offset"] == null ? null : json["offset"],
//         page: json["page"] == null ? null : json["page"],
//         limit: json["limit"] == null ? null : json["limit"],
//         pagination: json["pagination"] == null ? null : json["pagination"],
//         useEstimatedCount: json["useEstimatedCount"] == null
//             ? null
//             : json["useEstimatedCount"],
//         useCustomCountFn:
//             json["useCustomCountFn"] == null ? null : json["useCustomCountFn"],
//         forceCountFn:
//             json["forceCountFn"] == null ? null : json["forceCountFn"],
//         read: json["read"] == null ? null : Query.fromJson(json["read"]),
//         options:
//             json["options"] == null ? null : Query.fromJson(json["options"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "collation": collation == null ? null : collation,
//         "sort": sort == null ? null : sort,
//         "populate": populate == null ? null : populate,
//         "projection": projection == null ? null : projection,
//         "lean": lean == null ? null : lean,
//         "leanWithId": leanWithId == null ? null : leanWithId,
//         "offset": offset == null ? null : offset,
//         "page": page == null ? null : page,
//         "limit": limit == null ? null : limit,
//         "pagination": pagination == null ? null : pagination,
//         "useEstimatedCount":
//             useEstimatedCount == null ? null : useEstimatedCount,
//         "useCustomCountFn": useCustomCountFn == null ? null : useCustomCountFn,
//         "forceCountFn": forceCountFn == null ? null : forceCountFn,
//         "read": read == null ? null : read!.toJson(),
//         "options": options == null ? null : options!.toJson(),
//       };
// }

// class Query {
//   Query();

//   factory Query.fromJson(Map<String, dynamic> json) => Query();

//   Map<String, dynamic> toJson() => {};
// }
// To parse this JSON data, do
//
//     final postWebinarListReq = postWebinarListReqFromJson(jsonString);

import 'dart:convert';

PostWebinarListReq postWebinarListReqFromJson(String str) =>
    PostWebinarListReq.fromJson(json.decode(str));

String postWebinarListReqToJson(PostWebinarListReq data) =>
    json.encode(data.toJson());

class PostWebinarListReq {
  PostWebinarListReq({
    this.query,
    this.options,
    this.isCountOnly,
  });

  Query? query;
  Options? options;
  bool? isCountOnly;

  factory PostWebinarListReq.fromJson(Map<String, dynamic> json) =>
      PostWebinarListReq(
        query: json["query"] == null ? null : Query.fromJson(json["query"]),
        options:
            json["options"] == null ? null : Options.fromJson(json["options"]),
        isCountOnly: json["isCountOnly"] == null ? null : json["isCountOnly"],
      );

  Map<String, dynamic> toJson() => {
        "query": query == null ? null : query?.toJson(),
        "options": options == null ? null : options?.toJson(),
        "isCountOnly": isCountOnly == null ? null : isCountOnly,
      };
}

class Options {
  Options({
    this.page,
    this.limit,
    this.options,
  });

  int? page;
  int? limit;
  Query? options;

  factory Options.fromJson(Map<String, dynamic> json) => Options(
        page: json["page"] == null ? null : json["page"],
        limit: json["limit"] == null ? null : json["limit"],
        options:
            json["options"] == null ? null : Query.fromJson(json["options"]),
      );

  Map<String, dynamic> toJson() => {
        "page": page == null ? null : page,
        "limit": limit == null ? null : limit,
        "options": options == null ? null : options?.toJson(),
      };
}

class Query {
  Query();

  factory Query.fromJson(Map<String, dynamic> json) => Query();

  Map<String, dynamic> toJson() => {};
}
