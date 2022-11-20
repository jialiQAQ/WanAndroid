import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:wanandroid/module/homepage/HomePagePage.dart';
import 'package:wanandroid/widget/web_page_widget.dart';

class Routes {
  static const String homePage = "/home page";
  static const String webPage = "/webpage/:url";
  static final _router = FluroRouter();

  static init() {
    _router.define(homePage, handler: _homePageHandler);
    _router.define(webPage, handler: _webPageHandler);
  }

  static final _homePageHandler = _defaultHandler(const HomePagePage());
  static final _webPageHandler = Handler(handlerFunc: (context, map) {
    return WebPageWidget(map["url"]![0]);
  });

  static to(BuildContext context, String path,
      {Map<String, dynamic>? params,
      Object? argument,
      TransitionType transition = TransitionType.fadeIn,
      bool replace = false,
      bool clearStack = false}) {
    String newPath = path.substring(0, path.indexOf(":"));
    if (params != null) {
      params.forEach((key, value) {
        newPath += "/$path";
      });
    }
    _router.navigateTo(context, newPath,
        transition: transition,
        clearStack: clearStack,
        replace: replace,
        routeSettings: RouteSettings(arguments: argument));
  }

  static _defaultHandler(Widget widget) {
    return Handler(handlerFunc: (context, map) {
      return widget;
    });
  }
}
