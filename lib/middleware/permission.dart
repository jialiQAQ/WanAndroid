import 'package:permission_handler/permission_handler.dart';

class Permissions {
  static const int grant = 1;
  static const int deny = 0;

  static Future<bool> isNetworkEnable() async {
    return await Permission.scheduleExactAlarm.isGranted;
  }
}
