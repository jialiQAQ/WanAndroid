import 'package:wanandroid/generated/json/base/json_convert_content.dart';
import 'package:wanandroid/model/home_page_hot_key_entity.dart';

HomePageHotKeyEntity $HomePageHotKeyEntityFromJson(Map<String, dynamic> json) {
  final HomePageHotKeyEntity homePageHotKeyEntity = HomePageHotKeyEntity();
  final List<HomePageHotKeyData>? data =
      jsonConvert.convertListNotNull<HomePageHotKeyData>(json['data']);
  if (data != null) {
    homePageHotKeyEntity.data = data;
  }
  final int? errorCode = jsonConvert.convert<int>(json['errorCode']);
  if (errorCode != null) {
    homePageHotKeyEntity.errorCode = errorCode;
  }
  final String? errorMsg = jsonConvert.convert<String>(json['errorMsg']);
  if (errorMsg != null) {
    homePageHotKeyEntity.errorMsg = errorMsg;
  }
  return homePageHotKeyEntity;
}

Map<String, dynamic> $HomePageHotKeyEntityToJson(HomePageHotKeyEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['data'] = entity.data.map((v) => v.toJson()).toList();
  data['errorCode'] = entity.errorCode;
  data['errorMsg'] = entity.errorMsg;
  return data;
}

HomePageHotKeyData $HomePageHotKeyDataFromJson(Map<String, dynamic> json) {
  final HomePageHotKeyData homePageHotKeyData = HomePageHotKeyData();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    homePageHotKeyData.id = id;
  }
  final String? link = jsonConvert.convert<String>(json['link']);
  if (link != null) {
    homePageHotKeyData.link = link;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    homePageHotKeyData.name = name;
  }
  final int? order = jsonConvert.convert<int>(json['order']);
  if (order != null) {
    homePageHotKeyData.order = order;
  }
  final int? visible = jsonConvert.convert<int>(json['visible']);
  if (visible != null) {
    homePageHotKeyData.visible = visible;
  }
  return homePageHotKeyData;
}

Map<String, dynamic> $HomePageHotKeyDataToJson(HomePageHotKeyData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['link'] = entity.link;
  data['name'] = entity.name;
  data['order'] = entity.order;
  data['visible'] = entity.visible;
  return data;
}
