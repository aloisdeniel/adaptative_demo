import 'package:flutter/widgets.dart';

extension SpacingIterableExtension on Iterable<Widget> {
  List<Widget> spaced({double horizontal, double vertical}) => _spaced(
        horizontal: horizontal,
        vertical: vertical,
      ).toList();

  Iterable<Widget> _spaced({double horizontal, double vertical}) sync* {
    for (var i = 0; i < length; i++) {
      if (i > 0) {
        yield SizedBox(
          width: horizontal,
          height: vertical,
        );
      }
      yield this.elementAt(i);
    }
  }
}
