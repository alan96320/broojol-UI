import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

Future startScreen(BuildContext context, Widget screen, PageTransitionType transitionType) {
  // return Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  return Navigator.push(context, PageTransition(type: transitionType, child: screen));
}

Future replaceScreen(BuildContext context, Widget screen) {
  return Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => screen));
}
