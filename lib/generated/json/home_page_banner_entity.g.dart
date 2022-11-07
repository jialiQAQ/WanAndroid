import 'package:wanandroid/generated/json/base/json_convert_content.dart';
import 'package:wanandroid/model/home_page_banner_entity.dart';

HomePageBannerEntity $HomePageBannerEntityFromJson(Map<String, dynamic> json) {
  final HomePageBannerEntity homePageBannerEntity = HomePageBannerEntity();
  final List<HomePageBannerData>? data =
      jsonConvert.convertListNotNull<HomePageBannerData>(json['data']);
  if (data != null) {
    homePageBannerEntity.data = data;
  }
  final int? errorCode = jsonConvert.convert<int>(json['errorCode']);
  if (errorCode != null) {
    homePageBannerEntity.errorCode = errorCode;
  }
  final String? errorMsg = jsonConvert.convert<String>(json['errorMsg']);
  if (errorMsg != null) {
    homePageBannerEntity.errorMsg = errorMsg;
  }
  return homePageBannerEntity;
}

Map<String, dynamic> $HomePageBannerEntityToJson(HomePageBannerEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['data'] = entity.data.map((v) => v.toJson()).toList();
  data['errorCode'] = entity.errorCode;
  data['errorMsg'] = entity.errorMsg;
  return data;
}

HomePageBannerData $HomePageBannerDataFromJson(Map<String, dynamic> json) {
  final HomePageBannerData homePageBannerData = HomePageBannerData();
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    homePageBannerData.category = category;
  }
  final String? icon = jsonConvert.convert<String>(json['icon']);
  if (icon != null) {
    homePageBannerData.icon = icon;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    homePageBannerData.id = id;
  }
  final String? link = jsonConvert.convert<String>(json['link']);
  if (link != null) {
    homePageBannerData.link = link;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    homePageBannerData.name = name;
  }
  final int? order = jsonConvert.convert<int>(json['order']);
  if (order != null) {
    homePageBannerData.order = order;
  }
  final int? visible = jsonConvert.convert<int>(json['visible']);
  if (visible != null) {
    homePageBannerData.visible = visible;
  }
  return homePageBannerData;
}

Map<String, dynamic> $HomePageBannerDataToJson(HomePageBannerData entity) {
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
