import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flutter_news/part2/contents2/VideoTabPage.dart';
import 'package:flutter_news/part2/HomePage.dart';

import 'package:flutter_news/part2/contents1/AllItemsPage.dart';
import 'package:flutter_news/part2/contents1/DrawerPage.dart';
import 'package:flutter_news/part2/contents1/NotificationPage.dart';
import 'package:flutter_news/part2/contents1/TrendPage.dart';
import 'package:flutter_news/part2/contents1/RecentPage.dart';

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
        '/all_items': (BuildContext context) => AllItemsPage(),
        '/trend': (BuildContext context) => TrendPage(),
        '/notification': (BuildContext context) => NotificationPage(),
        '/recent': (BuildContext context) => RecentPage(),
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
  late PageController pageController;
  int currentPage = 0;


  @override
  void initState(){
    pageController = PageController(initialPage: currentPage);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    // 设置状态栏颜色
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Theme.of(context).primaryColor));

    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        children: <Widget>[
          HomePage(),
          // SmallVideoPage(),
          VideoTabPage(),
          TrendPage(),
          NotificationPage(),
        ],
      ),

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
          pageController.jumpToPage(index);
        },
        currentIndex: currentPage,

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
}
