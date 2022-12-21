import 'dart:html';

import 'package:simple_dart_ui_core/simple_dart_ui_core.dart';

class Link extends Component with MixinActive, MixinDisable {
  Link() : super('Link');

  @override
  AnchorElement element = AnchorElement();

  bool _newTab = false;

  bool get newTab => _newTab;

  set newTab(bool value) {
    _newTab = value;
    if (value) {
      element.target = '_blank';
    } else {
      element.target = '_self';
    }
  }

  set caption(String caption) => element.text = caption;

  String get caption => element.text ?? '';

  set href(String href) => element.href = href;

  String get href => element.href ?? '';
}
