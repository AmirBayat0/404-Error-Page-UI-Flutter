// ignore_for_file: use_key_in_widget_constructors, must_be_immutable
import 'package:flutter/material.dart';

class TopAnime extends StatelessWidget {
  Widget? child;
  Curve? curve;
  int seconds;
  int toppadding;

  TopAnime(this.seconds, this.toppadding, {required this.child, this.curve});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        child: child,
        tween: Tween<double>(begin: 0, end: 1),
        duration: Duration(seconds: seconds),
        curve: curve ?? Curves.bounceIn,
        builder: (BuildContext context, double value, child) {
          return Opacity(
            opacity: value,
            child: Padding(
              padding: EdgeInsets.only(top: value * toppadding),
              child: this.child,
            ),
          );
        });
  }
}

class BottomAnime extends StatelessWidget {
  Widget? child;
  Curve? curve;
  int seconds;
  int toppadding;

  BottomAnime(this.seconds, this.toppadding, {required this.child, this.curve});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        child: child,
        tween: Tween<double>(begin: 0, end: 1),
        curve: curve ?? Curves.bounceIn,
        duration: Duration(seconds: seconds),
        builder: (BuildContext context, double value, child) {
          return Opacity(
            opacity: value,
            child: Padding(
              padding: EdgeInsets.only(bottom: value * toppadding),
              child: this.child,
            ),
          );
        });
  }
}
