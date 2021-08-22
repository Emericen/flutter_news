import 'package:flutter/material.dart';


/// animated transition
void gotoPageAnimated(BuildContext context, Widget newPage,
    {bool showAnimation = false,
    Type type = Type.RIGHT_TO_LEFT,
    int duration = 100}) {
  if (showAnimation) {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          // return SearchBar(
          //   Colors.black,
          //   onCancelSearch: () {
          //     print('cancel search...');
          //     Navigator.pop(context);
          //   },
          //   onSearchQueryChanged: (inputString) {
          //     print('Search text to' + inputString);
          //   },
          // );
          return newPage;
        },
        transitionsBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation, Widget child) {
          double dx = 1.0;
          double dy = 0.0;
          double endX = 0.0;
          double endY = 0.0;

          switch (type) {
            case Type.BOTTOM_TO_TOP:
              dx = 0.0;
              dy = 1.0;
              endX = 0.0;
              endY = 0.0;
              break;
            case Type.TOP_TO_BOTTOM:
              dx = 0.0;
              dy = 0.0;
              endX = 0.0;
              endY = 1.0;
              break;
            case Type.RIGHT_TO_LEFT:
              dx = 1.0;
              dy = 0.0;
              endX = 0.0;
              endY = 0.0;
              break;
            case Type.LEFT_TO_RIGHT:
              dx = 0.0;
              dy = 0.0;
              endX = 1.0;
              endY = 0.0;
              break;
          }

          return SlideTransition(
            position: Tween(begin: Offset(dx, dy), end: Offset(endX, endY))
                .animate(animation),
            child: child,
          );
        },
        transitionDuration: Duration(milliseconds: duration),
      ),
    );
  } else {
    Navigator.of(context)
        .push(PageRouteBuilder(pageBuilder: (_, __, ___) => newPage));
  }
}

enum Type {
  BOTTOM_TO_TOP,
  TOP_TO_BOTTOM,
  RIGHT_TO_LEFT,
  LEFT_TO_RIGHT,
}


/// regular transition
void gotoPage(BuildContext context, Widget newPage) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) {
      return newPage;
    }),
  );
}


/// regular transition w/ pushNamed
void gotoNamedPage(BuildContext context, String newPageName) {
  Navigator.of(context).pushNamed(newPageName);
}
