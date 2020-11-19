import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'labels/ar.dart';
import 'labels/en.dart';
import 'labels/fr.dart';

class AdaptativeLocalizationDelegate
    extends LocalizationsDelegate<AdaptativeLocalization> {
  const AdaptativeLocalizationDelegate();

  static final translations = <AdaptativeLocalization>[
    localizationFr,
    localizationEn,
    localizationAr,
  ];

  @override
  bool isSupported(Locale locale) =>
      translations.any((x) => x.languageCode == locale.languageCode);

  @override
  Future<AdaptativeLocalization> load(Locale locale) {
    return SynchronousFuture(translations.firstWhere(
      (x) => x.languageCode == locale.languageCode,
      orElse: () => localizationEn,
    ));
  }

  @override
  bool shouldReload(AdaptativeLocalizationDelegate old) => false;
}

class AdaptativeLocalization {
  const AdaptativeLocalization({
    @required this.languageCode,
    @required this.menuAboutTabTitle,
    @required this.menuNewsTabTitle,
    @required this.aboutTitle,
    @required this.aboutDescription,
    @required this.newsErrorMessage,
  });
  final String languageCode;
  // Tabs
  final String menuNewsTabTitle;
  final String menuAboutTabTitle;
  // About
  final String aboutTitle;
  final String aboutDescription;

  // News
  final String newsErrorMessage;
}
