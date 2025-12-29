import 'package:flutter/material.dart';

enum NavigateType {
  push,           // Normal push (keep stack)
  replace,        // Replace current page
  removePrevious, // Pop one, then push
  clearAll,       // Remove all and push
}

class TestNavigateToPageWidget<T> extends PageRouteBuilder<T> {
  final Widget page;

  TestNavigateToPageWidget(this.page)
      : super(
    pageBuilder: (context, animation, anotherAnimation) => page,
    transitionDuration: const Duration(milliseconds: 500),
    transitionsBuilder: (context, animation, anotherAnimation, child) {
      animation = CurvedAnimation(
        curve: Curves.fastLinearToSlowEaseIn,
        parent: animation,
      );
      return Align(
        alignment: Alignment.bottomCenter,
        child: SizeTransition(
          sizeFactor: animation,
          axisAlignment: 0,
          child: child,
        ),
      );
    },
  );

  static Future<T?> navigate<T>(
      BuildContext context,
      Widget page, {
        NavigateType type = NavigateType.push,
      }) {
    final route = TestNavigateToPageWidget<T>(page);

    switch (type) {
      case NavigateType.push:
        return Navigator.push<T>(context, route);

      case NavigateType.replace:
        return Navigator.pushReplacement<T, T>(context, route);

      case NavigateType.removePrevious:
        Navigator.pop(context); // remove one
        return Navigator.push<T>(context, route);

      case NavigateType.clearAll:
        return Navigator.pushAndRemoveUntil<T>(
          context,
          route,
              (route) => false, // clear all previous
        );
    }
  }
}
void useNavigateToPageWidget(
    BuildContext context,
    Widget page, {
      NavigateType type = NavigateType.push,
      bool closeSheet = false,
    }) {
  if (closeSheet) {
    if (Navigator.of(context, rootNavigator: true).canPop()) {
      Navigator.of(context, rootNavigator: true).pop();
    }
  }

  WidgetsBinding.instance.addPostFrameCallback((_) {
    TestNavigateToPageWidget.navigate(
      Navigator.of(context, rootNavigator: true).context,
      page,
      type: type,
    );
  });
}
