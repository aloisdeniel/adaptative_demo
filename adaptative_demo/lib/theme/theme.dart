import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'fallback.dart' as fallback;

part 'theme.freezed.dart';

class AdaptativeTheme extends InheritedWidget {
  AdaptativeTheme({
    Key key,
    @required Widget child,
    @required this.data,
  })  : assert(data != null),
        super(
          key: key,
          child: child,
        );

  final AdaptativeThemeData data;

  static AdaptativeThemeData of(BuildContext context) {
    var result = context.dependOnInheritedWidgetOfExactType<AdaptativeTheme>();
    return result?.data ?? AdaptativeThemeData.fallback(context);
  }

  @override
  bool updateShouldNotify(AdaptativeTheme oldWidget) {
    return data != oldWidget.data;
  }
}

@freezed
abstract class AdaptativeThemeData with _$AdaptativeThemeData {
  const factory AdaptativeThemeData({
    @required AdaptativeColorMode colorMode,
    @required AdaptativeSizeMode sizeMode,
    @required double maxContentWidth,
    @required AdaptativeThemeTextStylesData text,
    @required AdaptativeThemeColorsData colors,
    @required AdaptativeThemeSpacingData spacing,
    @required AdaptativeThemeInsetsData insets,
    @required AdaptativeThemeDurationsData durations,
    @required AdaptativeThemeBorderRadiusData borderRadius,
  }) = _AdaptativeThemeData;

  factory AdaptativeThemeData.fallback(BuildContext context) {
    final mediaQuery = MediaQuery.of(context, nullOk: true);
    final isDark =
        mediaQuery != null && mediaQuery.platformBrightness == Brightness.dark;
    return isDark ? fallback.dark(context) : fallback.light(context);
  }
}

@freezed
abstract class AdaptativeThemeColorsData with _$AdaptativeThemeColorsData {
  const factory AdaptativeThemeColorsData({
    @required Color black1,
    @required Color black2,
    @required Color black3,
    @required Color white1,
    @required Color white2,
    @required Color grey,
  }) = _AdaptativeThemeColorsData;
}

@freezed
abstract class AdaptativeThemeTextStylesData
    with _$AdaptativeThemeTextStylesData {
  const factory AdaptativeThemeTextStylesData({
    @required TextStyle big,
    @required TextStyle regular,
    @required TextStyle small,
  }) = _AdaptativeThemeTextStylesData;
}

@freezed
abstract class AdaptativeThemeSpacingData with _$AdaptativeThemeSpacingData {
  const factory AdaptativeThemeSpacingData({
    @required double small,
    @required double regular,
    @required double big,
  }) = _AdaptativeThemeSpacingData;
}

@freezed
abstract class AdaptativeThemeInsetsData with _$AdaptativeThemeInsetsData {
  const factory AdaptativeThemeInsetsData({
    @required EdgeInsets small,
    @required EdgeInsets regular,
    @required EdgeInsets big,
  }) = _AdaptativeThemeInsetsData;
}

@freezed
abstract class AdaptativeThemeDurationsData
    with _$AdaptativeThemeDurationsData {
  const factory AdaptativeThemeDurationsData({
    @required Duration quick,
    @required Duration regular,
    @required Duration slow,
  }) = _AdaptativeThemeDurationsData;
}

@freezed
abstract class AdaptativeThemeBorderRadiusData
    with _$AdaptativeThemeBorderRadiusData {
  const factory AdaptativeThemeBorderRadiusData({
    @required BorderRadius small,
    @required BorderRadius regular,
    @required BorderRadius big,
  }) = _AdaptativeThemeBorderRadiusData;
}

enum AdaptativeSizeMode {
  small,
  medium,
  large,
}

enum AdaptativeColorMode {
  light,
  dark,
}
