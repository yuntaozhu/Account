import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es', 'de', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
    String? deText = '',
    String? arText = '',
  }) =>
      [enText, esText, deText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // buyer_user_order
  {
    '51kawpgz': {
      'en': 'Welcome,',
      'ar': 'مرحبا،',
      'de': 'Herzlich willkommen,',
      'es': 'Bienvenidos,',
    },
    '30kx6e5v': {
      'en': '您的赟市账户信息',
      'ar': 'آخر التحديثات الخاصة بك أدناه.',
      'de': 'Ihre neuesten Updates sind unten.',
      'es': 'Sus últimas actualizaciones se encuentran a continuación.',
    },
    'enaeefjv': {
      'en': '赟贝',
      'ar': '',
      'de': '',
      'es': '',
    },
    'syy689nt': {
      'en': '累计收入',
      'ar': '7630 دولارًا',
      'de': '\$7.630',
      'es': '\$7,630',
    },
    'g02c1t1h': {
      'en': '累计支出',
      'ar': '',
      'de': '',
      'es': '',
    },
    'rfozud9v': {
      'en': '全部',
      'ar': 'تحويل',
      'de': 'Transfer',
      'es': 'Transferir',
    },
    'pcrarg0a': {
      'en': '收入',
      'ar': 'نشاط',
      'de': 'Aktivität',
      'es': 'Actividad',
    },
    'zmjsfzgg': {
      'en': '支出',
      'ar': 'بنكي',
      'de': 'Meine Bank',
      'es': 'Mi banco',
    },
    'dfjtbkbo': {
      'en': 'Transaction',
      'ar': 'عملية',
      'de': 'Transaktion',
      'es': 'Transacción',
    },
    'g7t9krj7': {
      'en': '订单编号',
      'ar': 'احصل على مكافآت بعيدة',
      'de': 'Go-Far-Prämien',
      'es': 'Recompensas Ve Lejos',
    },
    'f3hxl69y': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // buyer_user_release
  {
    '76deh3ax': {
      'en': 'Welcome,',
      'ar': '',
      'de': '',
      'es': '',
    },
    'xy7ays0z': {
      'en': '您的赟市账户信息',
      'ar': '',
      'de': '',
      'es': '',
    },
    'pt15h3du': {
      'en': '兑换券',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ewsjgjau': {
      'en': '累计收入',
      'ar': '',
      'de': '',
      'es': '',
    },
    '0ngnpfzu': {
      'en': '累计支出',
      'ar': '',
      'de': '',
      'es': '',
    },
    'idq66qaf': {
      'en': '全部',
      'ar': '',
      'de': '',
      'es': '',
    },
    '62rhktwj': {
      'en': '收入',
      'ar': '',
      'de': '',
      'es': '',
    },
    'cwmfaot7': {
      'en': '支出',
      'ar': '',
      'de': '',
      'es': '',
    },
    'w3ew66t6': {
      'en': 'Transaction',
      'ar': '',
      'de': '',
      'es': '',
    },
    'hvtbeb4p': {
      'en': '兑换券',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ffhp7vr3': {
      'en': 'Home',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // pay_page
  {
    'plhbsn0k': {
      'en': 'Welcome,',
      'ar': '',
      'de': '',
      'es': '',
    },
    '2q84czff': {
      'en': '您的赟市账户信息',
      'ar': '',
      'de': '',
      'es': '',
    },
    'j6d91r4f': {
      'en': '赟市支付',
      'ar': '',
      'de': '',
      'es': '',
    },
    'irevumw4': {
      'en': '店铺名称',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ug91s181': {
      'en': '输入金额',
      'ar': '',
      'de': '',
      'es': '',
    },
    '6xfy1gva': {
      'en': '请输入价格',
      'ar': '',
      'de': '',
      'es': '',
    },
    'wlr3xnol': {
      'en': '兑换券：自动计算',
      'ar': '',
      'de': '',
      'es': '',
    },
    'tcmnjaw7': {
      'en': '实付金额',
      'ar': '',
      'de': '',
      'es': '',
    },
    'uywbv6qe': {
      'en': '自动计算',
      'ar': '',
      'de': '',
      'es': '',
    },
    'npa90mc0': {
      'en': '继续支付',
      'ar': '',
      'de': '',
      'es': '',
    },
    'cqgfdez5': {
      'en': 'Home',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // distributor_order
  {
    'v70odvyw': {
      'en': 'Welcome,',
      'ar': '',
      'de': '',
      'es': '',
    },
    'e9a4fyfh': {
      'en': '您的赟市账户信息',
      'ar': '',
      'de': '',
      'es': '',
    },
    '00xl8y6s': {
      'en': '积分',
      'ar': '',
      'de': '',
      'es': '',
    },
    '43qaq761': {
      'en': '累计收入',
      'ar': '',
      'de': '',
      'es': '',
    },
    'pg6b30v8': {
      'en': '累计支出',
      'ar': '',
      'de': '',
      'es': '',
    },
    'sgdkz0id': {
      'en': '全部',
      'ar': '',
      'de': '',
      'es': '',
    },
    'rerygba0': {
      'en': '收入',
      'ar': '',
      'de': '',
      'es': '',
    },
    'd2fmbhn8': {
      'en': '支出',
      'ar': '',
      'de': '',
      'es': '',
    },
    'itgmijyu': {
      'en': 'Transaction',
      'ar': '',
      'de': '',
      'es': '',
    },
    '5w4hw3mx': {
      'en': '订单编号',
      'ar': '',
      'de': '',
      'es': '',
    },
    'p77zun69': {
      'en': 'Home',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // distributorRelease
  {
    '55omotn7': {
      'en': 'Welcome,',
      'ar': '',
      'de': '',
      'es': '',
    },
    '3fi8zmmb': {
      'en': '您的赟市账户信息',
      'ar': '',
      'de': '',
      'es': '',
    },
    '5r8ut3re': {
      'en': '余额',
      'ar': '',
      'de': '',
      'es': '',
    },
    'w72v0aak': {
      'en': '累计收入',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ganfc7cx': {
      'en': '累计支出',
      'ar': '',
      'de': '',
      'es': '',
    },
    't21ocqti': {
      'en': '全部',
      'ar': '',
      'de': '',
      'es': '',
    },
    'bjnbs8cq': {
      'en': '收入',
      'ar': '',
      'de': '',
      'es': '',
    },
    'uk0siekj': {
      'en': '支出',
      'ar': '',
      'de': '',
      'es': '',
    },
    'emh31l96': {
      'en': 'Transaction',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ej0nfp86': {
      'en': '余额',
      'ar': '',
      'de': '',
      'es': '',
    },
    'zf7x4onp': {
      'en': 'Home',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // Miscellaneous
  {
    'lzyb73wy': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'kx9cdks4': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'efvtwj7k': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ec5hfa1e': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'q5ljwvfo': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'j4rmwb3h': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '6ah1b18f': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '2kos1hen': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'yb15bbve': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'kzwxzqd3': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'yul993ds': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'bes02nw5': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'uml9q38m': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'aox3s4fb': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'l8hv5a7z': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '4pjwb70a': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '0xlokf4y': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '8twlwiwt': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'mq271o48': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '9wkr9po7': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'fzl77fg5': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '5gdkcu6g': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'i4x5bnr6': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'k07dwrcf': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    't4xzlq9q': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '513nj4m0': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'a1jxfgju': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
