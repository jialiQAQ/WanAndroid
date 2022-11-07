import 'dart:convert';

import 'package:wanandroid/generated/json/base/json_field.dart';
import 'package:wanandroid/generated/json/home_page_friend_entity.g.dart';

@JsonSerializable()
class HomePageFriendEntity {
  late List<HomePageFriendData> data;
  late int errorCode;
  late String errorMsg;

  HomePageFriendEntity();

  factory HomePageFriendEntity.fromJson(Map<String, dynamic> json) =>
      $HomePageFriendEntityFromJson(json);

  Map<String, dynamic> toJson() => $HomePageFriendEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class HomePageFriendData {
  late String category;
  late String icon;
  late int id;
  late String link;
  late String name;
  late int order;
  late int visible;

  HomePageFriendData();

  factory HomePageFriendData.fromJson(Map<String, dynamic> json) =>
      $HomePageFriendDataFromJson(json);

  Map<String, dynamic> toJson() => $HomePageFriendDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
