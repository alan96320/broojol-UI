import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  final SharedPreferences shared;

  Preferences({this.shared});

  Locale loadLanguage() {
    return Locale(shared.getString('language') ?? 'en');
  }

  Future<void> saveLanguage(Locale locale) async {
    await shared.setString('language', locale.languageCode);
    await shared.setString('country_code', locale.countryCode);
  }

  static Future<Preferences> init() {
    return SharedPreferences.getInstance().then((shared) {
      return Preferences(shared: shared);
    });
  }
}
