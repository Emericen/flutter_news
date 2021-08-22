import 'dart:math';

import 'package:flutter/material.dart';
import 'package:reorderables/reorderables.dart';

class AllItemsPage extends StatefulWidget {
  const AllItemsPage({Key? key}) : super(key: key);

  @override
  _AllItemsPageState createState() => _AllItemsPageState();
}



class _AllItemsPageState extends State<AllItemsPage> {
  late List<Widget> _tiles;

  @override
  void initState() {
    super.initState();
    _tiles = [
      buildItem('关注'),
      buildItem('头条'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          '所有栏目',
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(),
        centerTitle: true,
        actions: <Widget>[
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.close,
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: buildContents(),
    );
  }

  // Widget buildContents(double width) {
  //   List<String> data = [
  //     '关注',
  //     '头条',
  //     '视频',
  //     '娱乐',
  //     '轻松一刻',
  //     '收藏',
  //     '卡包',
  //     '抖音',
  //     '分享',
  //     '设置',
  //     '军事',
  //     '英雄联盟',
  //     '地区',
  //     '支付',
  //     '发现',
  //     '微信',
  //     '知乎',
  //     '火山',
  //     '卡包',
  //     '生活',
  //     '热点',
  //     '房产',
  //     '股票',
  //     '历史',
  //     '家居',
  //     '独家',
  //     '赛事',
  //     'NBA',
  //     '热度',
  //   ];
  //
  //   return SizedBox(
  //     width: width,
  //
  //     // btw, wrap vs. gridview: gridview can slid if items extend over one page, gridview also takes more performance
  //
  //     child: Wrap(
  //       spacing: 10,
  //       runSpacing: 10,
  //       direction: Axis.horizontal,
  //       verticalDirection: VerticalDirection.down,
  //       alignment: WrapAlignment.spaceEvenly,
  //       crossAxisAlignment: WrapCrossAlignment.start,
  //
  //       // loop / iterate like this
  //       children: data.map((dataEntry) {
  //         return Chip(
  //           label: Container(
  //             width: 55,
  //             child: Center(
  //               child: Text(dataEntry),
  //             ),
  //           ),
  //           labelStyle: TextStyle(
  //             color: dataEntry == '头条' ? Colors.red : Colors.black,
  //           ),
  //           labelPadding: EdgeInsets.symmetric(horizontal: 15),
  //           backgroundColor: Colors.white,
  //           padding: EdgeInsets.all(10),
  //           shape: RoundedRectangleBorder(
  //             side: BorderSide(
  //               color: Colors.grey[200]!,
  //               width: 1.0,
  //               style: BorderStyle.solid,
  //             ),
  //             borderRadius: BorderRadius.circular(20),
  //           ),
  //         );
  //       }).toList(),
  //     ),
  //   );
  // }

  Widget buildContents() {
    List<String> titles = [
      '关注',
      '头条',
      '视频',
      '娱乐',
      '轻松一刻',
      '收藏',
      '卡包',
      '抖音',
      '分享',
      '设置',
      '军事',
      '英雄联盟',
      '地区',
      '支付',
      '发现',
      '微信',
      '知乎',
      '火山',
      '卡包',
      '生活',
      '热点',
      '房产',
      '股票',
      '历史',
      '家居',
      '独家',
      '赛事',
      'NBA',
      '热度',
    ];

    return ListView(
      children: <Widget>[
        Container(
          width: 400,
          height: 50,
          child: Row(
            children: [
              SizedBox(
                height: 50,
                width: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        '我的栏目',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        '拖动排序',
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                width: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: GestureDetector(
                        onTap: () {
                          print('clicked on complete');
                        },
                        child: Container(
                          width: 50,
                          height: 25,
                          decoration: new BoxDecoration(
                            border: new Border.all(
                              color: Colors.red,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '完成',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        buildContentsAll(),
        GestureDetector(
          onTap: () {
            setState(() {
              print('新增');
              Random random = Random();
              int index = random.nextInt(titles.length);
              var newItem = buildItem(titles[index]);
              _tiles.add(newItem);
            });
          },
          child: Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Text(
                '新增',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              print('删除');
              _tiles.removeLast();
            });
          },
          child: Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Text(
                '删除',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildContentsAll() {
    return ReorderableWrap(
      onReorder: (oldIndex, newIndex) {
        Widget data = _tiles.removeAt(oldIndex);
        _tiles.insert(newIndex, data);
        print(oldIndex.toString() + " to " + newIndex.toString());
      },
      spacing: 8,
      runSpacing: 4,
      padding: const EdgeInsets.all(8),
      children: _tiles,
    );
  }

  Widget buildItem(String title) {
    return Container(
      // margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
      width: 80,
      height: 35,
      decoration: new BoxDecoration(
        border: Border.all(
          color: Colors.grey[400]!,
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.close,
            color: Colors.grey,
            size: 14,
          ),
          Text(
            title,
            style: TextStyle(
                color: title == '抖音' ? Colors.red : Colors.black, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
