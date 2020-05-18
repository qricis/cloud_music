

import 'package:flutter/material.dart';

class SlideTopRouteBuilder extends PageRouteBuilder {
  final Widget page;

  SlideTopRouteBuilder(this.page)
      : super(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionDuration: Duration(milliseconds: 800),
      transitionsBuilder:
          (context, animation, secondaryAnimation, child) =>
          SlideTransition(
            position: Tween<Offset>(
                begin: Offset(0.0, -1.0), end: Offset(0.0, 0.0))
                .animate(CurvedAnimation(
                parent: animation, curve: Curves.fastOutSlowIn)),
            child: child,
          ));
}


class SlideBottomRouteBuilder extends PageRouteBuilder{
  final Widget page;

  SlideBottomRouteBuilder(this.page)
      : super(
    pageBuilder:(ctx,animation,secondaryAnimation)=>page,
    transitionDuration:Duration(milliseconds: 800),
    transitionsBuilder:(ctx,animation,secondaryAnimation,child)
        => SlideTransition(
          position: Tween<Offset>(
            begin: Offset(0.0,1.0),
            end: Offset(0.0,0.0),
          ).animate(CurvedAnimation(
            parent: animation,curve: Curves.fastOutSlowIn
          )),
          child: child,
        )
  );



}





















