import 'dart:convert';

import 'package:wanandroid/generated/json/base/json_field.dart';
import 'package:wanandroid/generated/json/home_page_hot_key_entity.g.dart';

@JsonSerializable()
class HomePageHotKeyEntity {
  late List<HomePageHotKeyData> data;
  late int errorCode;
  late String errorMsg;

  HomePageHotKeyEntity();

  factory HomePageHotKeyEntity.fromJson(Map<String, dynamic> json) =>
      $HomePageHotKeyEntityFromJson(json);

  Map<String, dynamic> toJson() => $HomePageHotKeyEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class HomePageHotKeyData {
  late int id;
  late String link;
  late String name;
  late int order;
  late int visible;

  HomePageHotKeyData();

  factory HomePageHotKeyData.fromJson(Map<String, dynamic> json) =>
      $HomePageHotKeyDataFromJson(json);

  Map<String, dynamic> toJson() => $HomePageHotKeyDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
