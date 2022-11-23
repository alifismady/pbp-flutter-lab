// To parse this JSON data, do
//
//     final myWatchList = myWatchListFromJson(jsonString);

import 'dart:convert';

List<MyWatchList> MyWatchListFromJson(String str) => List<MyWatchList>.from(json.decode(str).map((x) => MyWatchList.fromJson(x)));

String MyWatchListToJson(List<MyWatchList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MyWatchList {
    MyWatchList({
        required this.pk,
        required this.fields,
    });

    int pk;
    Fields fields;

    factory MyWatchList.fromRawJson(String str) =>
      MyWatchList.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory MyWatchList.fromJson(Map<String, dynamic> json) => MyWatchList(
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    Fields({
        required this.filmsWatched,
        required this.filmsTitle,
        required this.filmsRating,
        required this.filmsReleaseDate,
        required this.filmsReview,
    });

    String filmsWatched;
    String filmsTitle;
    int filmsRating;
    String filmsReleaseDate;
    String filmsReview;

    factory Fields.fromRawJson(String str) => Fields.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        filmsWatched: json["films_watched"],
        filmsTitle: json["films_title"],
        filmsRating: json["films_rating"],
        filmsReleaseDate: json["films_release_date"],
        filmsReview: json["films_review"],
    );

    Map<String, dynamic> toJson() => {
        "films_watched": filmsWatched,
        "films_title": filmsTitle,
        "films_rating": filmsRating,
        "films_release_date": filmsReleaseDate,
        "films_review": filmsReview,
    };
}



