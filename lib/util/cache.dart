import 'package:shared_preferences/shared_preferences.dart';

class Cache {
  static void set(String key, dynamic value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (value == null) {
      await sharedPreferences.remove(key);
    } else if (value is int) {
      await sharedPreferences.setInt(key, value);
    } else if (value is double) {
      await sharedPreferences.setDouble(key, value);
    } else if (value is bool) {
      await sharedPreferences.setBool(key, value);
    } else if (value is String) {
      await sharedPreferences.setString(key, value);
    } else if (value is List<String>) {
      await sharedPreferences.setStringList(key, value);
    }
  }

  static Future<T?> get<T>(String key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.get(key) as T?;
  }
}

class CacheKey {
  static const String cookie = "cookie";
}
