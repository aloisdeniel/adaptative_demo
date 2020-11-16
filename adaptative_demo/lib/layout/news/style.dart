import 'package:adaptative_demo/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'style.freezed.dart';

class NewsStyle extends InheritedWidget {
  NewsStyle({
    Key key,
    @required Widget child,
    @required this.data,
  })  : assert(data != null),
        super(
          key: key,
          child: child,
        );

  final NewsStyleData data;

  static NewsStyleData of(BuildContext context) {
    var result = context.dependOnInheritedWidgetOfExactType<NewsStyle>();
    return result?.data ?? NewsStyleData.fallback(context);
  }

  @override
  bool updateShouldNotify(NewsStyle oldWidget) {
    return data != oldWidget.data;
  }
}

@freezed
abstract class NewsStyleData with _$NewsStyleData {
  const factory NewsStyleData({
    // Small tiles
    @required TextStyle smallTileTitleStyle,
    @required int smallTileTitleMaxLines,
    @required bool smallTileDateVisible,
    @required TextStyle smallTileDateStyle,
    @required BorderRadius smallTileBorderRadius,
    @required Color smallTileLayerColor,
    @required int smallTileColumnCount,
    @required EdgeInsets smallTilePadding,
    @required EdgeInsets smallTileSectionPadding,
    @required double smallTileSpaceBetween,
    // Highlight tile
    @required bool highlightTileVerticleLayout,
    @required double highlightTileImageSize,
    @required TextStyle highlightTileTitleStyle,
    @required TextStyle highlightTileSummaryStyle,
    @required TextStyle highlightTileDateStyle,
    @required TextStyle highlightReadMoreStyle,
    @required EdgeInsets highlightTilePadding,
    @required BorderRadius highlightTileImageBorderRadius,
    @required double highlightTileBottomSpacing,
    @required double highlightTileSpaceBetween,

    // Section header
    @required EdgeInsets sectionHeaderMargin,
    @required TextStyle sectionHeaderStyle,
  }) = _NewsStyleData;

  factory NewsStyleData.fallback(BuildContext context) {
    final theme = AdaptativeTheme.of(context);
    final mediaQuery = MediaQuery.of(context);
    final smallTileColumnCount = () {
      switch (theme.sizeMode) {
        case AdaptativeSizeMode.large:
          return 3;
        case AdaptativeSizeMode.medium:
          return 3;
        default:
          return 1;
      }
    }();
    switch (theme.colorMode) {
      case AdaptativeColorMode.dark:
        return NewsStyleData(
          sectionHeaderStyle: theme.text.big.copyWith(
            color: theme.colors.white1,
            fontWeight: FontWeight.w900,
          ),
          sectionHeaderMargin: theme.insets.regular.copyWith(left: 0, right: 0),
          highlightTileVerticleLayout:
              theme.sizeMode == AdaptativeSizeMode.small,
          highlightTileImageSize: theme.text.regular.fontSize * 10,
          highlightTileTitleStyle: theme.text.big.copyWith(
            color: theme.colors.white1,
            fontWeight: FontWeight.w700,
          ),
          highlightTileDateStyle: theme.text.regular.copyWith(
            color: theme.colors.white1,
            fontWeight: FontWeight.w400,
          ),
          highlightTileSummaryStyle: theme.text.regular.copyWith(
            color: theme.colors.white1,
            fontWeight: FontWeight.w400,
          ),
          highlightReadMoreStyle: theme.text.regular.copyWith(
            color: theme.colors.white1,
            fontWeight: FontWeight.w400,
          ),
          highlightTileImageBorderRadius: theme.borderRadius.big,
          highlightTilePadding: theme.insets.big,
          highlightTileSpaceBetween: theme.spacing.big,
          highlightTileBottomSpacing: theme.spacing.big * 2,
          smallTileTitleMaxLines: mediaQuery.textScaleFactor > 1.25 ? 1 : 2,
          smallTileSectionPadding: theme.insets.regular,
          smallTileSpaceBetween: theme.spacing.regular,
          smallTileDateVisible: mediaQuery.textScaleFactor < 2,
          smallTileColumnCount: smallTileColumnCount,
          smallTilePadding: theme.insets.regular,
          smallTileTitleStyle: theme.text.regular.copyWith(
            color: theme.colors.white1,
            fontWeight: FontWeight.bold,
          ),
          smallTileDateStyle: theme.text.small.copyWith(
            color: theme.colors.white1,
            fontWeight: FontWeight.w400,
          ),
          smallTileBorderRadius: theme.borderRadius.regular,
          smallTileLayerColor: theme.colors.black1.withOpacity(0.7),
        );
      default:
        return NewsStyleData(
          sectionHeaderStyle: theme.text.big.copyWith(
            color: theme.colors.black2,
            fontWeight: FontWeight.w900,
          ),
          sectionHeaderMargin: theme.insets.regular.copyWith(left: 0, right: 0),
          highlightTileVerticleLayout:
              theme.sizeMode == AdaptativeSizeMode.small,
          highlightTileImageSize: theme.text.regular.fontSize * 10,
          highlightTileTitleStyle: theme.text.big.copyWith(
            color: theme.colors.black2,
            fontWeight: FontWeight.w700,
          ),
          highlightTileDateStyle: theme.text.regular.copyWith(
            color: theme.colors.black2,
            fontWeight: FontWeight.w400,
          ),
          highlightTileSummaryStyle: theme.text.regular.copyWith(
            color: theme.colors.black2,
            fontWeight: FontWeight.w400,
          ),
          highlightReadMoreStyle: theme.text.regular.copyWith(
            color: theme.colors.black2,
            fontWeight: FontWeight.w400,
          ),
          highlightTileImageBorderRadius: theme.borderRadius.big,
          highlightTilePadding: theme.insets.big,
          highlightTileSpaceBetween: theme.spacing.big,
          highlightTileBottomSpacing: theme.spacing.big * 2,
          smallTileTitleMaxLines: mediaQuery.textScaleFactor > 1.25 ? 1 : 2,
          smallTileSectionPadding: theme.insets.regular,
          smallTileSpaceBetween: theme.spacing.regular,
          smallTileColumnCount: smallTileColumnCount,
          smallTilePadding: theme.insets.regular,
          smallTileDateVisible: mediaQuery.textScaleFactor < 2,
          smallTileTitleStyle: theme.text.regular.copyWith(
            color: theme.colors.white1,
            fontWeight: FontWeight.bold,
          ),
          smallTileDateStyle: theme.text.small.copyWith(
            color: theme.colors.white1,
            fontWeight: FontWeight.w400,
          ),
          smallTileBorderRadius: theme.borderRadius.regular,
          smallTileLayerColor: theme.colors.black1.withOpacity(0.7),
        );
    }
  }
}
