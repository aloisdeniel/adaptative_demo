import 'package:flutter/widgets.dart';

import 'theme.dart';

AdaptativeThemeData light(BuildContext context) {
  final basic = responsive(context);
  return basic.copyWith(
    colorMode: AdaptativeColorMode.light,
  );
}

AdaptativeThemeData dark(BuildContext context) {
  final basic = responsive(context);
  return basic.copyWith(
    colorMode: AdaptativeColorMode.dark,
  );
}

AdaptativeThemeData responsive(BuildContext context) {
  final mediaQuery = MediaQuery.of(context);
  if (mediaQuery.size.width < 600) {
    return small;
  }
  if (mediaQuery.size.width < 1024) {
    return medium;
  }
  return large;
}

final small = AdaptativeThemeData(
  maxContentWidth: 600,
  colorMode: AdaptativeColorMode.light,
  sizeMode: AdaptativeSizeMode.small,
  text: const AdaptativeThemeTextStylesData(
    big: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 20,
      decoration: TextDecoration.none,
    ),
    regular: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 12,
      decoration: TextDecoration.none,
    ),
    small: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 10,
      decoration: TextDecoration.none,
    ),
  ),
  colors: _colors,
  insets: const AdaptativeThemeInsetsData(
    big: EdgeInsets.all(20),
    regular: EdgeInsets.all(8),
    small: EdgeInsets.all(2),
  ),
  spacing: const AdaptativeThemeSpacingData(
    big: 20,
    regular: 8,
    small: 2,
  ),
  borderRadius: AdaptativeThemeBorderRadiusData(
    big: BorderRadius.circular(20),
    regular: BorderRadius.circular(6),
    small: BorderRadius.circular(2),
  ),
  durations: const AdaptativeThemeDurationsData(
    slow: Duration(milliseconds: 1000),
    regular: Duration(milliseconds: 200),
    quick: Duration(milliseconds: 100),
  ),
);

final medium = AdaptativeThemeData(
  maxContentWidth: 1024,
  colorMode: AdaptativeColorMode.light,
  sizeMode: AdaptativeSizeMode.medium,
  text: const AdaptativeThemeTextStylesData(
    big: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 22,
      decoration: TextDecoration.none,
    ),
    regular: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 13,
      decoration: TextDecoration.none,
    ),
    small: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 10,
      decoration: TextDecoration.none,
    ),
  ),
  colors: _colors,
  insets: const AdaptativeThemeInsetsData(
    big: EdgeInsets.all(24),
    regular: EdgeInsets.all(12),
    small: EdgeInsets.all(4),
  ),
  spacing: const AdaptativeThemeSpacingData(
    big: 24,
    regular: 12,
    small: 4,
  ),
  borderRadius: AdaptativeThemeBorderRadiusData(
    big: BorderRadius.circular(20),
    regular: BorderRadius.circular(6),
    small: BorderRadius.circular(2),
  ),
  durations: const AdaptativeThemeDurationsData(
    slow: Duration(milliseconds: 1000),
    regular: Duration(milliseconds: 200),
    quick: Duration(milliseconds: 100),
  ),
);

final large = AdaptativeThemeData(
  maxContentWidth: 1400,
  colorMode: AdaptativeColorMode.light,
  sizeMode: AdaptativeSizeMode.large,
  text: const AdaptativeThemeTextStylesData(
    big: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 24,
      decoration: TextDecoration.none,
    ),
    regular: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 14,
      decoration: TextDecoration.none,
    ),
    small: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 12,
      decoration: TextDecoration.none,
    ),
  ),
  colors: _colors,
  insets: const AdaptativeThemeInsetsData(
    big: EdgeInsets.all(32),
    regular: EdgeInsets.all(16),
    small: EdgeInsets.all(6),
  ),
  spacing: const AdaptativeThemeSpacingData(
    big: 32,
    regular: 16,
    small: 6,
  ),
  borderRadius: AdaptativeThemeBorderRadiusData(
    big: BorderRadius.circular(20),
    regular: BorderRadius.circular(6),
    small: BorderRadius.circular(2),
  ),
  durations: const AdaptativeThemeDurationsData(
    slow: Duration(milliseconds: 1000),
    regular: Duration(milliseconds: 200),
    quick: Duration(milliseconds: 100),
  ),
);

const _colors = AdaptativeThemeColorsData(
  white1: Color(0xFFFFFFFF),
  white2: Color(0xFFF5F5F5),
  black1: Color(0xFF000000),
  black2: Color(0xFF131313),
  black3: Color(0xFF191919),
  grey: Color(0xFF9D9D9D),
);
