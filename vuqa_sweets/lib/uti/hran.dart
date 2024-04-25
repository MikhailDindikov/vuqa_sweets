import 'package:shared_preferences/shared_preferences.dart';

class Hran {
  static SharedPreferences? hran;

  static Future<(List, bool)> GoLooo() async {
    hran = await SharedPreferences.getInstance();
    return ([], false);
  }
}
