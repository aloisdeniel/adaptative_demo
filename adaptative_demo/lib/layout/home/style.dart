import 'package:adaptative_demo/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'style.freezed.dart';

class HomeStyle extends InheritedWidget {
  HomeStyle({
    Key key,
    @required Widget child,
    @required this.data,
  })  : assert(data != null),
        super(
          key: key,
          child: child,
        );

  final HomeStyleData data;

  static HomeStyleData of(BuildContext context) {
    var result = context.dependOnInheritedWidgetOfExactType<HomeStyle>();
    return result?.data ?? HomeStyleData.fallback(context);
  }

  @override
  bool updateShouldNotify(HomeStyle oldWidget) {
    return data != oldWidget.data;
  }
}

@freezed
abstract class HomeStyleData with _$HomeStyleData {
  const factory HomeStyleData({
    @required Color externalBackground,
    @required Color contentBackground,
    @required double maxContentWidth,
    @required double splitPanelWidth,
    @required bool hasBottomBar,
    @required bool isSplitted,
  }) = _HomeStyleData;

  factory HomeStyleData.fallback(BuildContext context) {
    final theme = AdaptativeTheme.of(context);
    final hasBottomBar = theme.sizeMode == AdaptativeSizeMode.small;
    final isSplitted = theme.sizeMode == AdaptativeSizeMode.large;
    switch (theme.colorMode) {
      case AdaptativeColorMode.dark:
        return HomeStyleData(
          splitPanelWidth: theme.text.regular.fontSize * 20,
          isSplitted: isSplitted,
          hasBottomBar: hasBottomBar,
          externalBackground: theme.colors.black1,
          contentBackground: theme.colors.black3,
          maxContentWidth: theme.maxContentWidth,
        );
      default:
        return HomeStyleData(
          splitPanelWidth: theme.text.regular.fontSize * 20,
          isSplitted: isSplitted,
          hasBottomBar: hasBottomBar,
          externalBackground: theme.colors.white2,
          contentBackground: theme.colors.white1,
          maxContentWidth: theme.maxContentWidth,
        );
    }
  }
}
