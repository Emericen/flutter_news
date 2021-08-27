import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter_news/part2/contents2/TabContentPage.dart';

class VideoTabPage extends StatefulWidget {
  const VideoTabPage({Key? key}) : super(key: key);

  @override
  _VideoTabPageState createState() => _VideoTabPageState();
}

class _VideoTabPageState extends State<VideoTabPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int result = 0;

  List<Tab> tabs = [];

  @override
  void initState() {
    super.initState();
    tabController = TabController(
        length: videoTabData.length, vsync: this, initialIndex: 0);
    result = 0;

    tabs = videoTabsLabels.map((item) {
      return Tab(text: item);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      tabController.index = result;
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Expanded(
              flex: 9,
              child: TabBar(
                tabs: tabs,
                controller: tabController,
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 2.0,
                indicatorPadding: EdgeInsets.all(0),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.black,
                labelStyle: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
                unselectedLabelStyle: TextStyle(color: Colors.black, fontSize: 14),
                dragStartBehavior: DragStartBehavior.start,
                onTap: (index) {
                  print('clicked on $index');
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {
                  print('search bar clicked');
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Icon(
                    Icons.search,
                    size:25,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: videoTabData,
        controller: tabController,
      ),

    );
  }
}
