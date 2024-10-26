import 'package:git_up_push/model/User.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class UserPreferences {
  static const String _userKey = 'user';

  Future<void> saveUser(UserBase user) async {
    final prefs = await SharedPreferences.getInstance();
    String uerJson = jsonEncode(user.toJson());
    await prefs.setString(_userKey, uerJson);
  }

  Future<UserBase?> getUser() async {
    final prefs = await SharedPreferences.getInstance();
    String? userJson = prefs.getString(_userKey);

    if (userJson != null) {
      Map<String, dynamic> userMap = jsonDecode(userJson);
      return UserBase.fromJson(userMap);
    }

    return null;
  }

  Future<void> removeUser() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_userKey);
  }
}
