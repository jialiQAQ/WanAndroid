import 'dart:convert';

import 'package:wanandroid/generated/json/base/json_field.dart';
import 'package:wanandroid/generated/json/home_page_top_article_entity.g.dart';

@JsonSerializable()
class HomePageTopArticleEntity {
  late List<HomePageTopArticleData> data;
  late int errorCode;
  late String errorMsg;

  HomePageTopArticleEntity();

  factory HomePageTopArticleEntity.fromJson(Map<String, dynamic> json) =>
      $HomePageTopArticleEntityFromJson(json);

  Map<String, dynamic> toJson() => $HomePageTopArticleEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class HomePageTopArticleData {
  late bool adminAdd;
  late String apkLink;
  late int audit;
  late String author;
  late bool canEdit;
  late int chapterId;
  late String chapterName;
  late bool collect;
  late int courseId;
  late String desc;
  late String descMd;
  late String envelopePic;
  late bool fresh;
  late String host;
  late int id;
  late bool isAdminAdd;
  late String link;
  late String niceDate;
  late String niceShareDate;
  late String origin;
  late String prefix;
  late String projectLink;
  late int publishTime;
  late int realSuperChapterId;
  late int selfVisible;
  late int shareDate;
  late String shareUser;
  late int superChapterId;
  late String superChapterName;
  late List<HomePageTopArticleDataTags> tags;
  late String title;
  late int type;
  late int userId;
  late int visible;
  late int zan;

  HomePageTopArticleData();

  factory HomePageTopArticleData.fromJson(Map<String, dynamic> json) =>
      $HomePageTopArticleDataFromJson(json);

  Map<String, dynamic> toJson() => $HomePageTopArticleDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class HomePageTopArticleDataTags {
  late String name;
  late String url;

  HomePageTopArticleDataTags();

  factory HomePageTopArticleDataTags.fromJson(Map<String, dynamic> json) =>
      $HomePageTopArticleDataTagsFromJson(json);

  Map<String, dynamic> toJson() => $HomePageTopArticleDataTagsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
