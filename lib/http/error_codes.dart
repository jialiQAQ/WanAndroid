class ErrorCode {
  static const int sessionInvalid = -1001;
  static const int success = 0;
  static const int fail = -1;
  static const int unknownError = 999;
  static const int networkError = 998;
  static const int timeoutError = 997;
  static const int serverError = 500;

  static final Map<int, String> _stringMap = {
    sessionInvalid: "登录已失效，请重新登录",
    unknownError: "未知错误，请重试",
    networkError: "网络故障，请检查网络连接",
    timeoutError: "请求超时，请重试",
    serverError: "服务器错误，请检查",
  };

  static String errorToString(int errorCode) {
    String result;
    if (_stringMap.containsKey(errorCode)) {
      result = _stringMap[errorCode]!;
    } else {
      result = "Unknown Error:$errorCode";
    }
    return result;
  }
}
