import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preference {
  static const String IS_USER_FIRSTTIME = "IS_USER_FIRSTTIME";

  static final Preference _preference = Preference._internal();

  factory Preference() {
    return _preference;
  }

  Preference._internal();

  static Preference get shared => _preference;

  static SharedPreferences? _pref;

  bool? getBool(String key) {
    return _pref!.getBool(key);
  }

  Future<bool> setBool(String key, bool value) {
    return _pref!.setBool(key, value);
  }
}
