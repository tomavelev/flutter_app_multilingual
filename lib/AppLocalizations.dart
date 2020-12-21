import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'messages_all.dart';

class AppLocalizations {
  static Future<AppLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode == null ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return new AppLocalizations();
    });
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  String get hello_world {
    return Intl.message('hello_world', name: 'hello_world');
  }

}
class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['bg', 'en', 'es'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) {
    return AppLocalizations.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) {
    return true;
  }
}
//        const Locale('bg'),
//        const Locale('en'),
//        const Locale('de'),
//        const Locale('ar'),
//        const Locale('es_ES'),
//        const Locale('fr'),
//        const Locale('pt'),
//        const Locale('ru'),
//        const Locale('zh_CN'),
//        const Locale('zh_TW'),
//        const Locale('tr'),
//        const Locale('it'),
//        const Locale('pl'),
//        const Locale('sk'),
//        const Locale('hr'),
//        const Locale('hi'),
//        const Locale('ja'),
//        const Locale('af'),
//        const Locale('sq'),
//        const Locale('az'),
//        const Locale('eu'),
//        const Locale('be'),
//        const Locale('bn'),
//        const Locale('ca'),
//        const Locale('cs'),
//        const Locale('da'),
//        const Locale('nl'),
//        const Locale('et'),
//        const Locale('fi'),
//        const Locale('gl'),
//        const Locale('el'),
//        const Locale('he'),
//        const Locale('hu'),
//        const Locale('is'),
//        const Locale('id'),
//        const Locale('kn'),
//        const Locale('ko'),
//        const Locale('lv'),
//        const Locale('lt'),
//        const Locale('mk'),
//        const Locale('ms'),
//        const Locale('ml'),
//        const Locale('mt'),
//        const Locale('no'),
//        const Locale('ro'),
//        const Locale('sr'),
//        const Locale('sl'),
//        const Locale('sw'),
//        const Locale('sv'),
//        const Locale('tl'),
//        const Locale('ta'),
//        const Locale('te'),
//        const Locale('th'),
//        const Locale('uk'),
//        const Locale('vi'),
