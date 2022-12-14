// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutter/material.dart' show debugPrint;
import 'package:wanandroid/model/home_page_article_entity.dart';
import 'package:wanandroid/model/home_page_banner_entity.dart';
import 'package:wanandroid/model/home_page_friend_entity.dart';
import 'package:wanandroid/model/home_page_hot_key_entity.dart';
import 'package:wanandroid/model/home_page_top_article_entity.dart';

JsonConvert jsonConvert = JsonConvert();

typedef JsonConvertFunction<T> = T Function(Map<String, dynamic> json);

class JsonConvert {
  static final Map<String, JsonConvertFunction> _convertFuncMap = {
    (HomePageArticleEntity).toString(): HomePageArticleEntity.fromJson,
    (HomePageArticleData).toString(): HomePageArticleData.fromJson,
    (HomePageArticleDataDatas).toString(): HomePageArticleDataDatas.fromJson,
    (HomePageBannerEntity).toString(): HomePageBannerEntity.fromJson,
    (HomePageBannerData).toString(): HomePageBannerData.fromJson,
    (HomePageFriendEntity).toString(): HomePageFriendEntity.fromJson,
    (HomePageFriendData).toString(): HomePageFriendData.fromJson,
    (HomePageHotKeyEntity).toString(): HomePageHotKeyEntity.fromJson,
    (HomePageHotKeyData).toString(): HomePageHotKeyData.fromJson,
    (HomePageTopArticleEntity).toString(): HomePageTopArticleEntity.fromJson,
    (HomePageTopArticleData).toString(): HomePageTopArticleData.fromJson,
    (HomePageTopArticleDataTags).toString():
        HomePageTopArticleDataTags.fromJson,
  };

  T? convert<T>(dynamic value) {
    if (value == null) {
      return null;
    }
    return asT<T>(value);
  }

  List<T?>? convertList<T>(List<dynamic>? value) {
    if (value == null) {
      return null;
    }
    try {
      return value.map((dynamic e) => asT<T>(e)).toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return <T>[];
    }
  }

  List<T>? convertListNotNull<T>(dynamic value) {
    if (value == null) {
      return null;
    }
    try {
      return (value as List<dynamic>).map((dynamic e) => asT<T>(e)!).toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return <T>[];
    }
  }

  T? asT<T extends Object?>(dynamic value) {
    if (value == null) {
      return null;
    }
    if (value is T) {
      return value;
    }
    final String type = T.toString();
    try {
      final String valueS = value.toString();
      if (type == "String") {
        return valueS as T;
      } else if (type == "int") {
        final int? intValue = int.tryParse(valueS);
        if (intValue == null) {
          return double.tryParse(valueS)?.toInt() as T?;
        } else {
          return intValue as T;
        }
      } else if (type == "double") {
        return double.parse(valueS) as T;
      } else if (type == "DateTime") {
        return DateTime.parse(valueS) as T;
      } else if (type == "bool") {
        if (valueS == '0' || valueS == '1') {
          return (valueS == '1') as T;
        }
        return (valueS == 'true') as T;
      } else if (type == "Map" || type.startsWith("Map<")) {
        return value as T;
      } else {
        if (_convertFuncMap.containsKey(type)) {
          return _convertFuncMap[type]!(value) as T;
        } else {
          throw UnimplementedError('$type unimplemented');
        }
      }
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return null;
    }
  }

  //list is returned by type
  static M? _getListChildType<M>(List<Map<String, dynamic>> data) {
    if (<HomePageArticleEntity>[] is M) {
      return data
          .map<HomePageArticleEntity>(
              (Map<String, dynamic> e) => HomePageArticleEntity.fromJson(e))
          .toList() as M;
    }
    if (<HomePageArticleData>[] is M) {
      return data
          .map<HomePageArticleData>(
              (Map<String, dynamic> e) => HomePageArticleData.fromJson(e))
          .toList() as M;
    }
    if (<HomePageArticleDataDatas>[] is M) {
      return data
          .map<HomePageArticleDataDatas>(
              (Map<String, dynamic> e) => HomePageArticleDataDatas.fromJson(e))
          .toList() as M;
    }
    if (<HomePageBannerEntity>[] is M) {
      return data
          .map<HomePageBannerEntity>(
              (Map<String, dynamic> e) => HomePageBannerEntity.fromJson(e))
          .toList() as M;
    }
    if (<HomePageBannerData>[] is M) {
      return data
          .map<HomePageBannerData>(
              (Map<String, dynamic> e) => HomePageBannerData.fromJson(e))
          .toList() as M;
    }
    if (<HomePageFriendEntity>[] is M) {
      return data
          .map<HomePageFriendEntity>(
              (Map<String, dynamic> e) => HomePageFriendEntity.fromJson(e))
          .toList() as M;
    }
    if (<HomePageFriendData>[] is M) {
      return data
          .map<HomePageFriendData>(
              (Map<String, dynamic> e) => HomePageFriendData.fromJson(e))
          .toList() as M;
    }
    if (<HomePageHotKeyEntity>[] is M) {
      return data
          .map<HomePageHotKeyEntity>(
              (Map<String, dynamic> e) => HomePageHotKeyEntity.fromJson(e))
          .toList() as M;
    }
    if (<HomePageHotKeyData>[] is M) {
      return data
          .map<HomePageHotKeyData>(
              (Map<String, dynamic> e) => HomePageHotKeyData.fromJson(e))
          .toList() as M;
    }
    if (<HomePageTopArticleEntity>[] is M) {
      return data
          .map<HomePageTopArticleEntity>(
              (Map<String, dynamic> e) => HomePageTopArticleEntity.fromJson(e))
          .toList() as M;
    }
    if (<HomePageTopArticleData>[] is M) {
      return data
          .map<HomePageTopArticleData>(
              (Map<String, dynamic> e) => HomePageTopArticleData.fromJson(e))
          .toList() as M;
    }
    if (<HomePageTopArticleDataTags>[] is M) {
      return data
          .map<HomePageTopArticleDataTags>((Map<String, dynamic> e) =>
              HomePageTopArticleDataTags.fromJson(e))
          .toList() as M;
    }

    debugPrint("${M.toString()} not found");

    return null;
  }

  static M? fromJsonAsT<M>(dynamic json) {
    if (json is List) {
      return _getListChildType<M>(
          json.map((e) => e as Map<String, dynamic>).toList());
    } else {
      return jsonConvert.asT<M>(json);
    }
  }
}
