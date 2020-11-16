import 'package:adaptative_demo/layout/about/layout.dart';
import 'package:adaptative_demo/layout/home/style.dart';
import 'package:adaptative_demo/layout/menu/layout.dart';
import 'package:adaptative_demo/layout/news/layout.dart';
import 'package:adaptative_demo/theme/theme.dart';
import 'package:flutter/widgets.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({
    Key key,
  }) : super(key: key);

  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  PageController _pageController;

  int get selectedTabIndex {
    if (!_pageController.hasClients) return 0;
    return _pageController.page.round();
  }

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    _pageController.addListener(_onPageChanged);
    super.initState();
  }

  void _onPageChanged() {
    setState(() {});
  }

  void _selectTab(int index, Duration duration) {
    _pageController.animateToPage(
      index,
      duration: duration,
      curve: Curves.easeOut,
    );
  }

  @override
  void dispose() {
    _pageController.removeListener(_onPageChanged);
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = AdaptativeTheme.of(context);
    final style = HomeStyle.of(context);
    return AnimatedContainer(
      duration: theme.durations.regular,
      color: style.externalBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          style.isSplitted
              ? TopBarWithSections()
              : (style.hasBottomBar
                  ? TopBar()
                  : TopBarWithTabs(
                      selectedTab: selectedTabIndex,
                      onTabSelected: (i) =>
                          _selectTab(i, theme.durations.regular),
                    )),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: style.maxContentWidth,
                ),
                child: AnimatedContainer(
                  duration: theme.durations.regular,
                  color: style.contentBackground,
                  child: (style.isSplitted)
                      ? Row(
                          children: [
                            Expanded(
                              child: NewsLayout(),
                            ),
                            SizedBox(
                              width: style.splitPanelWidth,
                              child: AboutLayout(),
                            ),
                          ],
                        )
                      : PageView(
                          controller: _pageController,
                          children: [
                            NewsLayout(),
                            AboutLayout(),
                          ],
                        ),
                ),
              ),
            ),
          ),
          if (style.hasBottomBar)
            BottomBar(
              selectedTab: selectedTabIndex,
              onTabSelected: (i) => _selectTab(i, theme.durations.regular),
            ),
        ],
      ),
    );
  }
}
