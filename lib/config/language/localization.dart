import 'dart:convert';

import 'package:broojol/config/language/preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class AppLanguage {
  Locale _locale = Locale('en');
  Locale get locale => _locale ?? Locale('en');

  void fetchLocale() async {
    _locale = (await Preferences.init()).loadLanguage();
  }

  void changeLanguage(Locale locale) async {
    (await Preferences.init()).saveLanguage(locale);
    _locale = locale;
  }
}

class AppLocalization {
  final Locale locale;
  Map<String, dynamic> _localizedStrings;

  AppLocalization(this.locale);

  static AppLocalization of(BuildContext context) =>
      Localizations.of(context, AppLocalization);
  static LocalizationsDelegate<AppLocalization> delegate =
      _AppLocalizationDelegate();

  Future<bool> load() async {
    String language = await rootBundle
        .loadString('assets/language/${locale.languageCode}.json');
    _localizedStrings = jsonDecode(language) as Map<String, dynamic>;

    return true;
  }

  String translate(String key) {
    return _localizedStrings[key].toString();
  }
}

class _AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  @override
  bool isSupported(Locale locale) {
    return ['en', 'id'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalization> load(Locale locale) async {
    AppLocalization localizations = new AppLocalization(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalization> old) => false;
}

class ListLanguage {
  static const String inggris = 'en';
  static const String indonesia = 'id';

  static const List<String> choices = <String>[inggris, indonesia];
}
