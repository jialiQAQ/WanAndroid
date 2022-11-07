import 'dart:convert';

import 'package:wanandroid/generated/json/base/json_field.dart';
import 'package:wanandroid/generated/json/home_page_banner_entity.g.dart';

@JsonSerializable()
class HomePageBannerEntity {
  late List<HomePageBannerData> data;
  late int errorCode;
  late String errorMsg;

  HomePageBannerEntity();

  factory HomePageBannerEntity.fromJson(Map<String, dynamic> json) =>
      $HomePageBannerEntityFromJson(json);

  Map<String, dynamic> toJson() => $HomePageBannerEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class HomePageBannerData {
  late String category;
  late String icon;
  late int id;
  late String link;
  late String name;
  late int order;
  late int visible;

  HomePageBannerData();

  factory HomePageBannerData.fromJson(Map<String, dynamic> json) =>
      $HomePageBannerDataFromJson(json);

  Map<String, dynamic> toJson() => $HomePageBannerDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
