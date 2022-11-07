import 'dart:convert';

import 'package:wanandroid/generated/json/base/json_field.dart';
import 'package:wanandroid/generated/json/home_page_article_entity.g.dart';

@JsonSerializable()
class HomePageArticleEntity {
  late HomePageArticleData data;
  late int errorCode;
  late String errorMsg;

  HomePageArticleEntity();

  factory HomePageArticleEntity.fromJson(Map<String, dynamic> json) =>
      $HomePageArticleEntityFromJson(json);

  Map<String, dynamic> toJson() => $HomePageArticleEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class HomePageArticleData {
  late int curPage;
  late List<HomePageArticleDataDatas> datas;
  late int offset;
  late bool over;
  late int pageCount;
  late int size;
  late int total;

  HomePageArticleData();

  factory HomePageArticleData.fromJson(Map<String, dynamic> json) =>
      $HomePageArticleDataFromJson(json);

  Map<String, dynamic> toJson() => $HomePageArticleDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class HomePageArticleDataDatas {
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
  late List<dynamic> tags;
  late String title;
  late int type;
  late int userId;
  late int visible;
  late int zan;

  HomePageArticleDataDatas();

  factory HomePageArticleDataDatas.fromJson(Map<String, dynamic> json) =>
      $HomePageArticleDataDatasFromJson(json);

  Map<String, dynamic> toJson() => $HomePageArticleDataDatasToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
