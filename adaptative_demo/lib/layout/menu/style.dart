import 'package:adaptative_demo/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'style.freezed.dart';

class MenuStyle extends InheritedWidget {
  MenuStyle({
    Key key,
    @required Widget child,
    @required this.data,
  })  : assert(data != null),
        super(
          key: key,
          child: child,
        );

  final MenuStyleData data;

  static MenuStyleData of(BuildContext context) {
    var result = context.dependOnInheritedWidgetOfExactType<MenuStyle>();
    return result?.data ?? MenuStyleData.fallback(context);
  }

  @override
  bool updateShouldNotify(MenuStyle oldWidget) {
    return data != oldWidget.data;
  }
}

@freezed
abstract class MenuStyleData with _$MenuStyleData {
  const factory MenuStyleData({
    @required BoxDecoration tabSelectedDecoration,
    @required BoxDecoration tabUnselectedDecoration,
    @required TextStyle tabButtonSelectedTextStyle,
    @required TextStyle tabButtonUnselectedTextStyle,
    @required EdgeInsets tabButtonPadding,
    @required TextStyle logoTextStyle,
    @required EdgeInsets barPadding,
    @required double barSpacing,
    @required Color barBackgroundColor,
    @required double maxContentWidth,
  }) = _MenuStyleData;

  factory MenuStyleData.fallback(BuildContext context) {
    final theme = AdaptativeTheme.of(context);
    switch (theme.colorMode) {
      case AdaptativeColorMode.dark:
        return MenuStyleData(
          maxContentWidth: theme.maxContentWidth,
          barBackgroundColor: theme.colors.black2,
          barPadding: theme.insets.big,
          barSpacing: theme.spacing.regular,
          tabButtonPadding: theme.insets.regular,
          tabSelectedDecoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: theme.colors.white1,
              ),
            ),
          ),
          tabUnselectedDecoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: theme.colors.white1.withOpacity(0),
              ),
            ),
          ),
          tabButtonSelectedTextStyle: theme.text.regular.copyWith(
            color: theme.colors.white1,
          ),
          tabButtonUnselectedTextStyle: theme.text.regular.copyWith(
            color: theme.colors.grey,
          ),
          logoTextStyle: theme.text.big.copyWith(
            color: theme.colors.white1,
            fontWeight: FontWeight.w900,
          ),
        );
      default:
        return MenuStyleData(
          maxContentWidth: theme.maxContentWidth,
          barBackgroundColor: theme.colors.black1,
          barPadding: theme.insets.big,
          barSpacing: theme.spacing.regular,
          tabButtonPadding: theme.insets.regular,
          tabSelectedDecoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: theme.colors.white1,
              ),
            ),
          ),
          tabUnselectedDecoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: theme.colors.white1.withOpacity(0),
              ),
            ),
          ),
          tabButtonSelectedTextStyle: theme.text.regular.copyWith(
            color: theme.colors.white1,
          ),
          tabButtonUnselectedTextStyle: theme.text.regular.copyWith(
            color: theme.colors.grey,
          ),
          logoTextStyle: theme.text.big.copyWith(
            color: theme.colors.white1,
            fontWeight: FontWeight.w900,
          ),
        );
    }
  }
}
