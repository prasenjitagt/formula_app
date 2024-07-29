import 'package:flutter/material.dart';

class ScrollToBottom {
  void scrollToBottom(ScrollController myScrollController) {
    var scrollValue = myScrollController.position.maxScrollExtent;
    myScrollController.animateTo(scrollValue,
        duration: const Duration(milliseconds: 1500), curve: Curves.easeInOut);
  }
}
