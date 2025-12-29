import 'package:flutter/material.dart';
class NavigateToPageWidget extends PageRouteBuilder {
  final Widget page;

  NavigateToPageWidget(this.page)
      : super(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionDuration: const Duration(milliseconds: 500),
    reverseTransitionDuration: const Duration(milliseconds: 500),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final curvedAnimation = CurvedAnimation(
        parent: animation,
        curve: Curves.fastLinearToSlowEaseIn,
        reverseCurve: Curves.fastOutSlowIn,
      );

      return Align(
        alignment: Alignment.bottomCenter,
        child: SizeTransition(
          sizeFactor: curvedAnimation,
          axisAlignment: 0,
          child: child,
        ),
      );
    },
  );
}
