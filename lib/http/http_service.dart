import 'package:wanandroid/http/http.dart';
import 'package:wanandroid/model/home_page_article_entity.dart';
import 'package:wanandroid/model/home_page_friend_entity.dart';
import 'package:wanandroid/model/home_page_hot_key_entity.dart';
import 'package:wanandroid/model/home_page_top_article_entity.dart';

import '../model/home_page_banner_entity.dart';

class HttpService {
  static Future<HomePageArticleEntity> getHomePageArticles(int pageNo) async {
    Map<String, dynamic>? response =
        await HttpClient.get("/article/list/$pageNo/json");
    return HomePageArticleEntity.fromJson(response!);
  }

  static Future<HomePageBannerEntity> getHomePageBanners() async {
    Map<String, dynamic>? response = await HttpClient.get("/banner/json");
    return HomePageBannerEntity.fromJson(response!);
  }

  static Future<HomePageFriendEntity> getHomePageFriends() async {
    Map<String, dynamic>? response = await HttpClient.get("/friend/json");
    return HomePageFriendEntity.fromJson(response!);
  }

  static Future<HomePageHotKeyEntity> getHomePageHotKeys() async {
    Map<String, dynamic>? response = await HttpClient.get("/hotkey/json");
    return HomePageHotKeyEntity.fromJson(response!);
  }

  static Future<HomePageTopArticleEntity> getHomePageTopArticles() async {
    Map<String, dynamic>? response = await HttpClient.get("/article/top/json");
    return HomePageTopArticleEntity.fromJson(response!);
  }
}
