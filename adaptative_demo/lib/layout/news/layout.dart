import 'package:adaptative_demo/layout/news/style.dart';
import 'package:adaptative_demo/localization/delegate.dart';
import 'package:adaptative_demo/services/news_api.dart';
import 'package:adaptative_demo/state/news/actions.dart';
import 'package:adaptative_demo/state/state.dart';
import 'package:adaptative_demo/state/store.dart';
import 'package:adaptative_demo/layout/helpers.dart';
import 'package:adaptative_demo/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    return _RefreshForLocale(
      country: locale.countryCode.toLowerCase(),
      child: context.select<Store<ApplicationState>, Widget>(
        (x) => x.state.news.map(
          notLoaded: (_) => const NewsNotLoadedLayout(),
          loading: (_) => const NewsNotLoadingLayout(),
          loaded: (_) => const NewsLoadedLayout(),
          loadingFailed: (_) => const NewsLoadingFailedLayout(),
        ),
      ),
    );
  }
}

class NewsNotLoadedLayout extends StatelessWidget {
  const NewsNotLoadedLayout({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Not loaded');
  }
}

class _RefreshForLocale extends StatefulWidget {
  _RefreshForLocale({
    Key key,
    @required this.country,
    @required this.child,
  }) : super(key: key);

  final String country;
  final Widget child;

  @override
  _RefreshForLocaleState createState() => _RefreshForLocaleState();
}

class _RefreshForLocaleState extends State<_RefreshForLocale> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _refreshIfNeeded();
    });
    super.initState();
  }

  @override
  void didUpdateWidget(covariant _RefreshForLocale oldWidget) {
    if (oldWidget.country != widget.country)
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        _refreshIfNeeded();
      });
    super.didUpdateWidget(oldWidget);
  }

  void _refreshIfNeeded() {
    final store = context.read<Store<ApplicationState>>();
    final currentCountry = store.state.news.maybeMap(
      loaded: (x) => x.country,
      orElse: () => null,
    );
    if (currentCountry != widget.country) {
      store.dispatch(
        NewsAction.refresh(
          country: widget.country?.toLowerCase(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

class NewsNotLoadingLayout extends StatelessWidget {
  const NewsNotLoadingLayout({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class NewsLoadedLayout extends StatelessWidget {
  const NewsLoadedLayout({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = NewsStyle.of(context);
    final articles = context.select<Store<ApplicationState>, List<Article>>(
      (x) => x.state.news.maybeMap(
        loaded: (news) => news.articles,
        orElse: () => [],
      ),
    );

    final highlightArticle = articles.isNotEmpty ? articles.first : null;
    final otherArticles = articles.skip(1).toList();

    final rows = <Widget>[];
    if (style.smallTileColumnCount == 1) {
      rows.addAll(otherArticles.map(
        (e) => ArticleSmallTile(e),
      ));
    } else {
      for (var i = 0;
          i < otherArticles.length;
          i += style.smallTileColumnCount) {
        rows.add(
          Row(
            key: ValueKey(i),
            children: [
              ...otherArticles
                  .getRange(
                      i,
                      (i + style.smallTileColumnCount)
                          .clamp(0, articles.length - 1))
                  .map(
                    (e) => Expanded(
                      child: ArticleSmallTile(e),
                    ),
                  ),
            ].spaced(horizontal: style.smallTileSpaceBetween),
          ),
        );
      }
    }

    return ListView(padding: style.smallTileSectionPadding, children: <Widget>[
      if (highlightArticle != null) ...[
        ArticleHighlightTile(highlightArticle),
        SizedBox(height: style.highlightTileBottomSpacing),
      ],
      Padding(
        padding: style.sectionHeaderMargin,
        child: Text(
          'Other news',
          style: style.sectionHeaderStyle,
        ),
      ),
      ...rows.spaced(vertical: style.smallTileSpaceBetween),
    ]);
  }
}

class NewsLoadingFailedLayout extends StatelessWidget {
  const NewsLoadingFailedLayout({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AdaptativeTheme.of(context);
    final localizations = Localizations.of<AdaptativeLocalization>(
        context, AdaptativeLocalization);
    return Padding(
      padding: theme.insets.big,
      child: Center(
        child: Text(
          localizations.newsErrorMessage,
          style: theme.text.big.copyWith(
            color: Colors.red,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class ArticleSmallTile extends StatelessWidget {
  ArticleSmallTile(this.article) : super(key: Key(article.url));
  final Article article;

  @override
  Widget build(BuildContext context) {
    final style = NewsStyle.of(context);
    final locale = Localizations.localeOf(context);
    final dateLabel = DateFormat.yMMMd(locale.toString())
        .format(article.publishedAt.toLocal());
    return SizedBox(
      height: 100,
      child: ClipRRect(
        borderRadius: style.smallTileBorderRadius,
        child: Stack(
          children: [
            if (article.urlToImage != null)
              Positioned.fill(
                child: FadeInImage(
                  image: NetworkImage(article.urlToImage),
                  imageErrorBuilder: (c, e, st) => SizedBox(),
                  fit: BoxFit.cover,
                  placeholder: MemoryImage(kTransparentImage),
                ),
              ),
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(color: style.smallTileLayerColor),
              ),
            ),
            Positioned.fill(
              child: Padding(
                padding: style.smallTilePadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      article.title,
                      style: style.smallTileTitleStyle,
                      maxLines: style.smallTileTitleMaxLines,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (style.smallTileDateVisible)
                      Text(
                        dateLabel,
                        style: style.smallTileDateStyle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ArticleHighlightTile extends StatelessWidget {
  ArticleHighlightTile(this.article) : super(key: Key(article.url));
  final Article article;

  @override
  Widget build(BuildContext context) {
    final style = NewsStyle.of(context);
    final locale = Localizations.localeOf(context);
    final dateLabel = DateFormat.yMMMd(locale.toString())
        .format(article.publishedAt.toLocal());

    final image = article.urlToImage != null
        ? ClipRRect(
            borderRadius: style.smallTileBorderRadius,
            child: SizedBox(
              height: style.highlightTileImageSize,
              width: style.highlightTileVerticleLayout
                  ? null
                  : style.highlightTileImageSize,
              child: FadeInImage(
                image: NetworkImage(article.urlToImage),
                imageErrorBuilder: (c, e, st) => SizedBox(),
                fit: BoxFit.cover,
                placeholder: MemoryImage(kTransparentImage),
              ),
            ),
          )
        : null;

    final description = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          article.title,
          style: style.highlightTileTitleStyle,
        ),
        Text(
          dateLabel,
          style: style.highlightTileDateStyle,
        ),
        if (style.highlightTileVerticleLayout && image != null) ...[
          SizedBox(height: style.highlightTileSpaceBetween),
          image,
        ],
        SizedBox(height: style.highlightTileSpaceBetween),
        Text(
          article.description,
          style: style.highlightTileDateStyle,
        ),
        ReadMore(
          onTap: () {},
        ),
      ],
    );

    if (style.highlightTileVerticleLayout) {
      return description;
    }
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (image != null) ...[
          image,
          SizedBox(
            width: style.highlightTilePadding.left,
          ),
        ],
        Expanded(
          child: description,
        ),
      ],
    );
  }
}

class ReadMore extends StatelessWidget {
  const ReadMore({
    Key key,
    @required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final style = NewsStyle.of(context);
    return GestureDetector(
      child: Text(
        'Read more',
        style: style.highlightReadMoreStyle,
      ),
    );
  }
}
