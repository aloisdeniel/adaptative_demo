import 'package:adaptative_demo/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'style.freezed.dart';

class AboutStyle extends InheritedWidget {
  AboutStyle({
    Key key,
    @required Widget child,
    @required this.data,
  })  : assert(data != null),
        super(
          key: key,
          child: child,
        );

  final AboutStyleData data;

  static AboutStyleData of(BuildContext context) {
    var result = context.dependOnInheritedWidgetOfExactType<AboutStyle>();
    return result?.data ?? AboutStyleData.fallback(context);
  }

  @override
  bool updateShouldNotify(AboutStyle oldWidget) {
    return data != oldWidget.data;
  }
}

@freezed
abstract class AboutStyleData with _$AboutStyleData {
  const factory AboutStyleData({
    @required TextStyle titleStyle,
    @required TextStyle descriptionStyle,
    @required bool isCentered,
    @required EdgeInsets padding,
  }) = _AboutStyleData;

  factory AboutStyleData.fallback(BuildContext context) {
    final theme = AdaptativeTheme.of(context);
    final isCentered = theme.sizeMode != AdaptativeSizeMode.large;
    switch (theme.colorMode) {
      case AdaptativeColorMode.dark:
        return AboutStyleData(
          isCentered: isCentered,
          padding: theme.insets.big,
          titleStyle: theme.text.big.copyWith(
            color: theme.colors.white1,
            fontWeight: FontWeight.w700,
          ),
          descriptionStyle: theme.text.small.copyWith(
            color: theme.colors.white2,
            fontWeight: FontWeight.w700,
          ),
        );
      default:
        return AboutStyleData(
          isCentered: isCentered,
          padding: theme.insets.big,
          titleStyle: theme.text.big.copyWith(
            color: theme.colors.black1,
            fontWeight: FontWeight.w700,
          ),
          descriptionStyle: theme.text.regular.copyWith(
            color: theme.colors.black3,
            fontWeight: FontWeight.w700,
          ),
        );
    }
  }
}
