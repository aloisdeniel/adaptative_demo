import 'package:adaptative_demo/layout/menu/style.dart';
import 'package:adaptative_demo/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TopBarWithTabs extends StatelessWidget {
  const TopBarWithTabs({
    Key key,
    @required this.selectedTab,
    @required this.onTabSelected,
  }) : super(key: key);

  final int selectedTab;
  final ValueChanged<int> onTabSelected;

  @override
  Widget build(BuildContext context) {
    final style = MenuStyle.of(context);
    return Container(
      color: style.barBackgroundColor,
      child: SafeArea(
        bottom: false,
        child: Align(
          alignment: Alignment.center,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: style.maxContentWidth,
            ),
            child: Padding(
              padding: style.barPadding,
              child: Row(
                children: [
                  Logo(),
                  Spacer(),
                  Tabs(
                    selectedTab: selectedTab,
                    spaceEvenly: false,
                    onTabSelected: onTabSelected,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TopBarWithSections extends StatelessWidget {
  const TopBarWithSections({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AdaptativeTheme.of(context);
    final style = MenuStyle.of(context);
    return AnimatedContainer(
      duration: theme.durations.regular,
      color: style.barBackgroundColor,
      child: SafeArea(
        bottom: false,
        child: Align(
          alignment: Alignment.center,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: style.maxContentWidth,
            ),
            child: Padding(
              padding: style.barPadding,
              child: Row(
                children: [
                  Logo(),
                  Spacer(),
                  TabButton(
                    title: 'News',
                    isSelected: false,
                  ),
                  SizedBox(
                    width: 300,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: TabButton(
                        title: 'About',
                        isSelected: false,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
    @required this.selectedTab,
    @required this.onTabSelected,
  }) : super(key: key);

  final int selectedTab;
  final ValueChanged<int> onTabSelected;

  @override
  Widget build(BuildContext context) {
    final style = MenuStyle.of(context);
    return Container(
      color: style.barBackgroundColor,
      padding: style.barPadding,
      child: SafeArea(
        top: false,
        child: Tabs(
          selectedTab: selectedTab,
          onTabSelected: onTabSelected,
          spaceEvenly: true,
        ),
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = MenuStyle.of(context);
    return Container(
      color: style.barBackgroundColor,
      padding: style.barPadding,
      child: SafeArea(
        bottom: false,
        child: Center(
          child: Logo(),
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = MenuStyle.of(context);
    return Container(
      child: Text(
        "Adaptative",
        style: style.logoTextStyle,
      ),
    );
  }
}

class Tabs extends StatelessWidget {
  const Tabs({
    Key key,
    @required this.spaceEvenly,
    @required this.selectedTab,
    @required this.onTabSelected,
  }) : super(key: key);

  final bool spaceEvenly;
  final int selectedTab;
  final ValueChanged<int> onTabSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          spaceEvenly ? MainAxisAlignment.spaceEvenly : MainAxisAlignment.end,
      children: [
        TabButton(
          title: 'News',
          isSelected: selectedTab == 0,
          onTap: () => onTabSelected(0),
        ),
        TabButton(
          title: 'About',
          isSelected: selectedTab == 1,
          onTap: () => onTabSelected(1),
        ),
      ],
    );
  }
}

class TabButton extends StatelessWidget {
  const TabButton({
    Key key,
    @required this.title,
    @required this.isSelected,
    this.onTap,
  }) : super(key: key);

  final bool isSelected;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final style = MenuStyle.of(context);
    return GestureDetector(
      onTap: isSelected ? null : onTap,
      child: Container(
        decoration: isSelected
            ? style.tabSelectedDecoration
            : style.tabUnselectedDecoration,
        padding: style.tabButtonPadding,
        child: Text(
          title,
          style: isSelected
              ? style.tabButtonSelectedTextStyle
              : style.tabButtonUnselectedTextStyle,
        ),
      ),
    );
  }
}
