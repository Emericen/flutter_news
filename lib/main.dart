import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';

import 'package:flutter_news/part1/RecentPage.dart';
import 'package:flutter_news/part1/LevelPage.dart';
import 'package:flutter_news/part1/AccountSettingPage.dart';
import 'package:flutter_news/part1/SmallVideoPage.dart';
import 'package:flutter_news/part1/SquarePage.dart';
import 'package:flutter_news/part1/FreeFlowNewsPage.dart';
import 'package:flutter_news/part1/AllItemsPage.dart';
import 'package:flutter_news/part2/contents1/DrawerPage.dart';
import 'package:flutter_news/part2/contents1/SearchBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        //   '/recent': (BuildContext context) => RecentPage(),
        //   '/level': (BuildContext context) => LevelPage(),
        //   '/settings': (BuildContext context) => AccountSettingPage(),
        //   '/video': (BuildContext context) => SmallVideoPage(),
        //   '/square': (BuildContext context) => SquarePage(),
        //   '/freeflow_news': (BuildContext context) => FreeFlowNewsPage(),
        '/all_items': (BuildContext context) => AllItemsPage(),
      },
    );
  }
}

// Step #1. 搭建框架: appbar + navbar + side panel

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // 设置状态栏颜色
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Theme.of(context).primaryColor));

    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      // body: Column(
      //   children: <Widget>[
      //     ElevatedButton(
      //       onPressed: () {
      //         Navigator.of(context).pushNamed('/recent');
      //       },
      //       child: Text('最近浏览'),
      //     ),
      //     ElevatedButton(
      //       onPressed: () {
      //         Navigator.of(context).pushNamed('/level');
      //       },
      //       child: Text('等级介绍'),
      //     ),
      //     ElevatedButton(
      //       onPressed: () {
      //         Navigator.of(context).pushNamed('/settings');
      //       },
      //       child: Text('账号设置'),
      //     ),
      //     ElevatedButton(
      //       onPressed: () {
      //         Navigator.of(context).pushNamed('/video');
      //       },
      //       child: Text('小视频'),
      //     ),
      //     ElevatedButton(
      //       onPressed: () {
      //         Navigator.of(context).pushNamed('/square');
      //       },
      //       child: Text('圈子-广场'),
      //     ),
      //     ElevatedButton(
      //       onPressed: () {
      //         Navigator.of(context).pushNamed('/freeflow_news');
      //       },
      //       child: Text('免流量看新闻'),
      //     ),
      //     ElevatedButton(onPressed: () {
      //       Navigator.of(context).pushNamed('/all_items');
      //     }, child: Text('所有栏目'),),
      //   ],
      // ),
      // drawer: Container(
      //   width: 100,
      //   color: Colors.green,
      // ),
      // endDrawer: Container(
      //   width: 100,
      //   color: Colors.teal,
      // ),

      appBar: buildTitleBar(),

      body: Text('content'),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: '首页',
            activeIcon: Icon(
              Icons.home,
              color: Theme.of(context).primaryColor,
            ),
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.live_tv,
              color: Colors.white,
            ),
            label: '视频',
            activeIcon: Icon(
              Icons.live_tv,
              color: Theme.of(context).primaryColor,
            ),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_fire_department,
              color: Colors.white,
            ),
            label: '热度',
            activeIcon: Icon(
              Icons.local_fire_department,
              color: Theme.of(context).primaryColor,
            ),
            backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
              color: Colors.white,
            ),
            label: '圈子',
            activeIcon: Icon(
              Icons.people,
              color: Theme.of(context).primaryColor,
            ),
            backgroundColor: Colors.teal,
          ),
        ],
        onTap: (index) {
          print(index);
        },
        currentIndex: 1,

        // type: BottomNavigationBarType.fixed,
        type: BottomNavigationBarType.shifting,
        // fixedColor: Colors.red,
        // backgroundColor: Colors.white,
        iconSize: 25,

        // // icon属性的color和size和selectedIconTheme同时设置，以selectedIconTheme的Color和Size为准
        // selectedItemColor: Colors.orange,  // can't use with fixedColor
        //
        // // BottomBavigationBarItem的文字设置了size属性和selectedFontSize同时设置，以selectedFontSize为准
        // selectedFontSize: 20.0,
        selectedLabelStyle: TextStyle(color: Theme.of(context).primaryColor),
        // showSelectedLabels: true,

        // unselectedItemColor: Colors.grey,
        // unselectedIconTheme: IconThemeData(color: Colors.white),
        // unselectedFontSize: 12.0,
        // unselectedLabelStyle: TextStyle(),
        showUnselectedLabels: true,
      ),

      drawer: DrawerPage(),
      drawerDragStartBehavior: DragStartBehavior.start,
      drawerEdgeDragWidth: 50,
      // drawerScrimColor: Colors.red,
    );
  }

  AppBar buildTitleBar() {
    return AppBar(
      // 设置颜色
      backgroundColor: Theme.of(context).primaryColor,
      // 主题内容
      title: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(color: Colors.pinkAccent, width: 2),
          borderRadius: BorderRadius.circular(30),
        ),
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.search,
              size: 15,
            ),
            SizedBox(
              width: 163,
              height: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder:
                          (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
                        return SearchBar(
                          Colors.white,
                          // onCancelSearch: onCancelSearch
                          // onSearchQueryChanged: onSearchQueryChanged
                          onCancelSearch: () {},
                          onSearchQueryChanged: (inputString) {},
                        );
                      },
                      transitionsBuilder: (BuildContext context, Animation<double> animation,
                          Animation<double> secondaryAnimation, Widget child) {
                        return SlideTransition(
                          position: Tween(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0)).animate(animation),
                          child: child,
                        );
                      },
                      transitionDuration: Duration(milliseconds: 300),
                    ),
                  );
                },
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
            //   child: GestureDetector(
            //     onTap: () {
            //       Navigator.of(context).push(
            //         PageRouteBuilder(
            //           pageBuilder:
            //               (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
            //             return SearchBar(
            //               Colors.white,
            //               // onCancelSearch: onCancelSearch
            //               // onSearchQueryChanged: onSearchQueryChanged
            //               onCancelSearch: () {},
            //               onSearchQueryChanged: (inputString) {},
            //             );
            //           },
            //           transitionsBuilder: (BuildContext context, Animation<double> animation,
            //               Animation<double> secondaryAnimation, Widget child) {
            //             return SlideTransition(
            //               position: Tween(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0)).animate(animation),
            //               child: child,
            //             );
            //           },
            //           transitionDuration: Duration(milliseconds: 300),
            //         ),
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),

      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
          child: InkWell(
            onTap: () {
              // Navigator.of(context).pushNamed('/hot');
              print('clicked on trending icon');
            },
            child: Icon(
              Icons.whatshot,
              size: 20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
          child: InkWell(
            onTap: () {
              // Navigator.of(context).pushNamed('/notify');
              print('clicked on notify icon');
            },
            child: Icon(
              Icons.chat,
              size: 20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/all_items');
              print('clicked on all_items icon');
            },
            child: Icon(
              Icons.format_list_bulleted,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}
