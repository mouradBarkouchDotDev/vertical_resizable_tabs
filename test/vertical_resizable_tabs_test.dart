import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vertical_resizable_tabs/src/vertical_resizable_tabs.dart';

void main() {
  test('Widget creates successfully', () {
    final widget = VerticalResizableTabs(
      topTab: SizedBox(),
      bottomTab: SizedBox(),
    );
    expect(widget, isNotNull);
  });
}
