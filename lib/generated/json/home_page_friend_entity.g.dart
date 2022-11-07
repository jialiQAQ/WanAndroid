import 'package:wanandroid/generated/json/base/json_convert_content.dart';
import 'package:wanandroid/model/home_page_friend_entity.dart';

HomePageFriendEntity $HomePageFriendEntityFromJson(Map<String, dynamic> json) {
  final HomePageFriendEntity homePageFriendEntity = HomePageFriendEntity();
  final List<HomePageFriendData>? data =
      jsonConvert.convertListNotNull<HomePageFriendData>(json['data']);
  if (data != null) {
    homePageFriendEntity.data = data;
  }
  final int? errorCode = jsonConvert.convert<int>(json['errorCode']);
  if (errorCode != null) {
    homePageFriendEntity.errorCode = errorCode;
  }
  final String? errorMsg = jsonConvert.convert<String>(json['errorMsg']);
  if (errorMsg != null) {
    homePageFriendEntity.errorMsg = errorMsg;
  }
  return homePageFriendEntity;
}

Map<String, dynamic> $HomePageFriendEntityToJson(HomePageFriendEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['data'] = entity.data.map((v) => v.toJson()).toList();
  data['errorCode'] = entity.errorCode;
  data['errorMsg'] = entity.errorMsg;
  return data;
}

HomePageFriendData $HomePageFriendDataFromJson(Map<String, dynamic> json) {
  final HomePageFriendData homePageFriendData = HomePageFriendData();
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    homePageFriendData.category = category;
  }
  final String? icon = jsonConvert.convert<String>(json['icon']);
  if (icon != null) {
    homePageFriendData.icon = icon;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    homePageFriendData.id = id;
  }
  final String? link = jsonConvert.convert<String>(json['link']);
  if (link != null) {
    homePageFriendData.link = link;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    homePageFriendData.name = name;
  }
  final int? order = jsonConvert.convert<int>(json['order']);
  if (order != null) {
    homePageFriendData.order = order;
  }
  final int? visible = jsonConvert.convert<int>(json['visible']);
  if (visible != null) {
    homePageFriendData.visible = visible;
  }
  return homePageFriendData;
}

Map<String, dynamic> $HomePageFriendDataToJson(HomePageFriendData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['category'] = entity.category;
  data['icon'] = entity.icon;
  data['id'] = entity.id;
  data['link'] = entity.link;
  data['name'] = entity.name;
  data['order'] = entity.order;
  data['visible'] = entity.visible;
  return data;
}
