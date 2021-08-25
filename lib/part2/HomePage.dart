import 'package:flutter/material.dart';
import 'package:flutter_news/part2/contents2/TabContentPage.dart';
import 'package:flutter_news/part2/contents1/SearchBar.dart';
import 'package:flutter_news/part2/routes/RouteManager.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final List<Tab> tabs = <Tab>[
    Tab(text: '关注'),
    Tab(text: '头条'),
    Tab(text: '视频'),
    Tab(text: '娱乐'),
    Tab(text: '轻松一刻'),
    Tab(text: '收藏'),
    Tab(text: '卡包'),
    Tab(text: '抖音'),
    Tab(text: '分享'),
    Tab(text: '设置'),
    Tab(text: '军事'),
    Tab(text: '英雄联盟'),
    Tab(text: '地区'),
    Tab(text: '支付'),
    Tab(text: '发现'),
    Tab(text: '微信'),
    Tab(text: '知乎'),
    Tab(text: '火山'),
    Tab(text: '卡包'),
    Tab(text: '生活'),
    Tab(text: '热点'),
    Tab(text: '房产'),
    Tab(text: '股票'),
    Tab(text: '历史'),
    Tab(text: '家居'),
    Tab(text: '独家'),
  ];

  late TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildTitleBar(),
      body: TabBarView(
        controller: tabController,
        children: tabPageList,
      ),
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
              width: 160,
              height: 20,
              child: GestureDetector(
                onTap: () {
                  /// route manager
                  gotoPageAnimated(
                    context,
                    SearchBar(
                      Colors.black,
                      onCancelSearch: () {
                        print('cancel search...');
                        Navigator.pop(context);
                      },
                      onSearchQueryChanged: (inputString) {
                        print('Search text to' + inputString);
                      },
                    ),
                    showAnimation: true,
                    type: Type.RIGHT_TO_LEFT,
                    duration: 300,
                  );
                },
              ),
            ),
          ],
        ),
      ),

      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
          child: InkWell(
            onTap: () {
              // Navigator.of(context).pushNamed('/trend');
              gotoNamedPage(context, '/trend');
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
              // Navigator.of(context).pushNamed('/notification');
              gotoNamedPage(context, '/notification');
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
            onTap: () async {
              // Navigator.of(context).pushNamed('/all_items');
              gotoNamedPage(context, '/all_items');
            },
            child: Icon(
              Icons.format_list_bulleted,
              size: 20,
            ),
          ),
        ),
      ],
      bottom: TabBar(
        tabs: tabs,
        controller: tabController,
        isScrollable: true,

        indicatorWeight: 2,
        // indicatorSize: TabBarIndicatorSize.label,
        indicatorSize: TabBarIndicatorSize.tab,

        // labelColor: Colors.green,
        labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        // unselectedLabelColor: Colors.green,
        unselectedLabelStyle: TextStyle(
          color: Colors.white,
        ),

        onTap: (index) {
          print('clicked on tab ' + index.toString());
        },
      ),
    );
  }

  @override
  void initState() {
    tabController = TabController(length: tabs.length, vsync: this);
    super.initState();
  }
}
