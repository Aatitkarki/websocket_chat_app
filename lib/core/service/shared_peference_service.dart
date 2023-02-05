import 'dart:convert';

import 'package:chat_app/core/constants/app_constants.dart';
import 'package:chat_app/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static final SharedPreferencesService _instance =
      SharedPreferencesService._internal();

  factory SharedPreferencesService() => _instance;

  SharedPreferencesService._internal();

  Future<void> _setValue(String key, dynamic value) async {
    final prefs = await SharedPreferences.getInstance();
    if (value is int) {
      prefs.setInt(key, value);
    } else if (value is double) {
      prefs.setDouble(key, value);
    } else if (value is String) {
      prefs.setString(key, value);
    } else if (value is bool) {
      prefs.setBool(key, value);
    }
  }

  Future<dynamic> _getValue(String key) async {
    final prefs = await SharedPreferences.getInstance();
    final value = prefs.get(key);
    return value;
  }

  Future<void> setUserDetails(UserModel userModel) async {
    return await _setValue(
        AppConstants.userDetailKey, jsonEncode(userModel.toJson()));
  }

  Future<UserModel?> getUserDetails() async {
    String? data = await _getValue(AppConstants.userDetailKey);
    if (data != null) {
      return UserModel.fromJson(jsonDecode(data));
    }
    return null;
  }
}
