import 'package:adaptative_demo/layout/about/style.dart';
import 'package:adaptative_demo/localization/delegate.dart';
import 'package:flutter/widgets.dart';

class AboutLayout extends StatelessWidget {
  const AboutLayout({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = AboutStyle.of(context);
    final localizations = Localizations.of<AdaptativeLocalization>(
        context, AdaptativeLocalization);
    return Padding(
      padding: style.padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            localizations.aboutTitle,
            textAlign: style.isCentered ? TextAlign.center : TextAlign.start,
            style: style.titleStyle,
          ),
          Text(
            localizations.aboutDescription,
            textAlign: style.isCentered ? TextAlign.center : TextAlign.start,
            style: style.descriptionStyle,
          ),
        ],
      ),
    );
  }
}
