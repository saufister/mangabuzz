// To parse this JSON data, do
//
//     final history = historyFromJson(jsonString);

import 'dart:convert';

List<HistoryModel> historyFromJson(String str) => List<HistoryModel>.from(
    json.decode(str).map((x) => HistoryModel.fromJson(x)));

String historyToJson(List<HistoryModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HistoryModel {
  HistoryModel({
    this.title,
    this.mangaEndpoint,
    this.image,
    this.author,
    this.type,
    this.rating,
    this.chapterReached,
    this.selectedIndex,
    this.totalChapter,
  });

  final String title;
  final String mangaEndpoint;
  final String image;
  final String author;
  final String type;
  final String rating;
  final int chapterReached;
  final int selectedIndex;
  int totalChapter;

  factory HistoryModel.fromJson(Map<String, dynamic> json) => HistoryModel(
        title: json["title"],
        mangaEndpoint: json["mangaEndpoint"],
        image: json["image"],
        author: json["author"],
        type: json["type"],
        rating: json["rating"],
        chapterReached: json["chapterReached"],
        selectedIndex: json["selectedIndex"],
        totalChapter: json["totalChapter"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "mangaEndpoint": mangaEndpoint,
        "image": image,
        "author": author,
        "type": type,
        "rating": rating,
        "chapterReached": chapterReached,
        "selectedIndex": selectedIndex,
        "totalChapter": totalChapter,
      };
}
