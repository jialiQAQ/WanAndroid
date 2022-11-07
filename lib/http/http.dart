import 'package:dio/dio.dart';
import 'package:wanandroid/http/response_inteceptor.dart';

class HttpClient {
  HttpClient();

  static late Dio _dio;
  static const String baseUrl = "https://www.wanandroid.com";
  static const String contentType = "application/json";
  static const int sendTimeout = 10;
  static const int receiveTimeout = 10;
  static CancelToken commonToken = CancelToken();

  factory HttpClient.internal() {
    final BaseOptions options = BaseOptions(
        baseUrl: baseUrl,
        sendTimeout: sendTimeout,
        receiveTimeout: receiveTimeout,
        contentType: contentType);
    _dio = Dio(options);
    _dio.interceptors.add(ResponseInterceptor());
    _dio.interceptors.add(LogInterceptor());
    return HttpClient();
  }

  static void cancel({CancelToken? cancelToken}) {
    CancelToken token;
    if (cancelToken == null) {
      token = commonToken;
    } else {
      token = cancelToken;
    }
    token.cancel();
  }

  static Future<Map<String, dynamic>?> get(String path,
      {Map<String, dynamic>? params,
      String? url = baseUrl,
      String? contentType = contentType}) async {
    RequestOptions? options = RequestOptions(
        path: path,
        method: 'get',
        baseUrl: url,
        queryParameters: params,
        cancelToken: commonToken,
        contentType: contentType);
    Response<Map<String, dynamic>?> response = await _dio.fetch(options);
    return response.data;
  }

  static Future<Map<String, dynamic>?> post(String path, dynamic data,
      {String? url = baseUrl, String? contentType = contentType}) async {
    RequestOptions? options = RequestOptions(
        path: path,
        method: 'post',
        baseUrl: url,
        data: data,
        cancelToken: commonToken,
        contentType: contentType);
    Response<Map<String, dynamic>?> response = await _dio.fetch(options);
    return response.data;
  }

  static Future<Map<String, dynamic>?> delete(String path, dynamic data,
      {String? url = baseUrl, String? contentType = contentType}) async {
    RequestOptions? options = RequestOptions(
        path: path,
        method: 'delete',
        baseUrl: url,
        data: data,
        cancelToken: commonToken,
        contentType: contentType);
    Response<Map<String, dynamic>?> response = await _dio.fetch(options);
    return response.data;
  }

  static Future<Map<String, dynamic>?> put(String path, dynamic data,
      {String? url = baseUrl, String? contentType = contentType}) async {
    RequestOptions? options = RequestOptions(
        path: path,
        method: 'put',
        baseUrl: url,
        cancelToken: commonToken,
        data: data,
        contentType: contentType);
    Response<Map<String, dynamic>?> response = await _dio.fetch(options);
    return response.data;
  }
}
