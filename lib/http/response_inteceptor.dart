import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:wanandroid/http/error_codes.dart';
import 'package:wanandroid/http/exception.dart';
import 'package:wanandroid/util/cache.dart';

class ResponseInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log("onResponse:" + response.toString());
    if (response.data != null) {
      String responseString = json.encode(response.data);
      Map<String, dynamic> responseJson = json.decode(responseString);
      int code = responseJson["code"] as int;
      if (code == ErrorCode.sessionInvalid) {
        if (code == ErrorCode.sessionInvalid) {
          throw SessionInvalidException();
        } else if (code == ErrorCode.success || code == ErrorCode.fail) {
          if (response.requestOptions.path.contains("login") &&
              code == ErrorCode.success) {
            Cache.set(CacheKey.cookie, response.headers.value("cookie"));
          } else if (response.requestOptions.path.contains("logout") &&
              code == ErrorCode.success) {
            Cache.set(CacheKey.cookie, null);
          }
          super.onResponse(response, handler);
        } else {
          throw UnknownErrorException();
        }
      }
    }
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    Map<String, dynamic>? headers = options.headers;
    headers.putIfAbsent("cookie", () => Cache.get<String>(CacheKey.cookie));
    RequestOptions newOptions = options.copyWith(headers: headers);
    super.onRequest(newOptions, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioErrorType.response:
        {
          super.onError(err, handler);
        }
        break;
      case DioErrorType.cancel:
        {
          handler.reject(err);
        }
        break;
      case DioErrorType.connectTimeout:
        {
          EasyLoading.dismiss();
          EasyLoading.showToast(
              ErrorCode.errorToString(ErrorCode.networkError));
          handler.reject(err);
        }
        break;
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        {
          EasyLoading.dismiss();
          EasyLoading.showToast(
              ErrorCode.errorToString(ErrorCode.timeoutError));
          handler.reject(err);
        }
        break;
      case DioErrorType.other:
        if (err.error is SessionInvalidException) {
          EasyLoading.dismiss();
          EasyLoading.showToast(
              ErrorCode.errorToString(ErrorCode.sessionInvalid));
          handler.reject(err);
        } else if (err.error is UnknownErrorException) {
          EasyLoading.dismiss();
          EasyLoading.showToast(
              ErrorCode.errorToString(ErrorCode.unknownError));
          handler.reject(err);
        }
        break;
    }
  }
}
