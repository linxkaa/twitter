import 'package:flutter/widgets.dart';

void removeFocusNode(BuildContext context) {
  FocusScopeNode currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
    currentFocus.focusedChild!.unfocus();
  }
}
