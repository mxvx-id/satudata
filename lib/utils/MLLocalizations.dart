// MLLocalizations.dart
import 'package:flutter/material.dart';
import 'package:satudata/utils/MLString.dart' as default_strings;
import 'package:satudata/utils/MLString_id.dart' as id_strings;

class MLLocalizations {
  static final Map<String, Map<String, String?>> _localizedStrings = {
    'en': {
      'mlGet_started': default_strings.mlGet_started,
      'mlSkip': default_strings.mlSkip,
      'mlSlide_one': default_strings.mlSlide_one,
      'mlSlide_one_subtitle': default_strings.mlSlide_one_subtitle,
      // Tambahkan semua key yang diperlukan
    },
    'id': {
      'mlGet_started': id_strings.mlGet_started,
      'mlSkip': id_strings.mlSkip,
      'mlSlide_one': id_strings.mlSlide_one,
      'mlSlide_one_subtitle': id_strings.mlSlide_one_subtitle,
      // Tambahkan semua key yang diperlukan
    },
  };

  static String? translate(String key, {String locale = 'id'}) {
    return _localizedStrings[locale]?[key] ?? 
           _localizedStrings['en']?[key] ?? 
           key;
  }
}
