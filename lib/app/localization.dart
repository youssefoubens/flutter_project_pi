import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  static const supportedLocales = [Locale('fr'), Locale('ar')];

  final Map<String, Map<String, String>> _localizedValues = {
    'fr': {
      'login': 'Connexion',
      'signup': 'Inscription',
      'profile': 'Profil',
      'personalInfo': 'Informations Personnelles',
      'settings': 'Paramètres',
      'darkMode': 'Mode Sombre',
      'logout': 'Déconnexion',
    },
    'ar': {
      'login': 'تسجيل الدخول',
      'signup': 'تسجيل',
      'profile': 'الملف الشخصي',
      'personalInfo': 'المعلومات الشخصية',
      'settings': 'الإعدادات',
      'darkMode': 'الوضع المظلم',
      'logout': 'تسجيل الخروج',
    },
  };

  String get login => _localizedValues[locale.languageCode]!['login']!;
  String get signup => _localizedValues[locale.languageCode]!['signup']!;
  String get profile => _localizedValues[locale.languageCode]!['profile']!;
  String get personalInfo =>
      _localizedValues[locale.languageCode]!['personalInfo']!;
  String get settings => _localizedValues[locale.languageCode]!['settings']!;
  String get darkMode => _localizedValues[locale.languageCode]!['darkMode']!;
  String get logout => _localizedValues[locale.languageCode]!['logout']!;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['fr', 'ar'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    Intl.defaultLocale = locale.languageCode;
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
