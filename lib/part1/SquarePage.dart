import 'package:flutter/material.dart';

class SquarePage extends StatefulWidget {
  const SquarePage({Key? key}) : super(key: key);

  @override
  _SquarePageState createState() => _SquarePageState();
}

class _SquarePageState extends State<SquarePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('圈子-广场'),
      ),
      body: buildContents(),
    );
  }

  // padding, align, center, stack, positioned
  Widget buildContents() {
    // return Padding(
    //   padding: EdgeInsets.all(10),
    //   // padding: EdgeInsets.only(left: 10, top: 10, right: 10),
    //   // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
    //   // padding: EdgeInsets.fromLTRB(10, 20, 10, 30),
    //   child: Container(
    //     color: Colors.teal,
    //   ),
    // );

    // return Align(
    //   alignment: Alignment.bottomCenter,
    //   child: Container(
    //     width: 300,
    //     height: 300,
    //     color: Colors.teal,
    //     child: Align(
    //       alignment: Alignment(0,1),  // play w/ these #
    //       // alignment: Alignment.bottomCenter,
    //       child: Text('文字内容'),
    //     ),
    //   ),
    // );

    // // notice how center effect its child's position in its direct parent
    // return Container(
    //   width: 300,
    //   height: 300,
    //   color: Colors.teal,
    //   child: Center(
    //     child: Container(
    //       width: 100,
    //       height: 100,
    //       color: Colors.red,
    //       child: new Text('文字内容')
    //     ),
    //   ),
    // );

    // // notice the order of objects
    // return Center(
    //   child: Stack(
    //     alignment: AlignmentDirectional.centerEnd,
    //     // alignment: Alignment.center,
    //     children: <Widget>[
    //       Container(width: 100, height: 100, color: Colors.lightBlueAccent),
    //       Container(width: 80, height: 80, color: Colors.orangeAccent),
    //       Container(width: 50, height: 50, color: Colors.green),
    //     ],
    //   ),
    // );

    // // notice the order of objects. Make sure to play w/ these # as well.
    // return Center(
    //   child: Stack(
    //     // alignment: Alignment.center,
    //     // alignment: Alignment.bottomCenter,
    //     alignment: AlignmentDirectional.topStart,
    //     children: <Widget>[
    //       Positioned(
    //         left: 20,
    //         right: 20,
    //         child: Container(width: 100, height: 100, color: Colors.red),
    //       ),
    //       Positioned(
    //         top: 20,
    //         bottom: 20,
    //         child: Container(width: 80, height: 80, color: Colors.blue),
    //       ),
    //       Positioned(
    //         left: 20,
    //         width: 60,
    //         child: Container(width: 75, height: 75, color: Colors.black),
    //       ),
    //     ],
    //   ),
    // );

    // // best example for Stack + Positioned / Align is perhaps 微信头像右上的红色气泡 Notification

    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1 / 1.4,
      ),
      children: <Widget>[
        buildItems('assets/images/shopping.png', '曾经你说', '赵乃吉'),
        buildItems('assets/images/shopping2.png', '花海', '周杰伦'),
        buildItems('assets/images/shopping3.png', 'STAY (Explicit)', 'The Kid LAROI / Justin Bieber'),
        buildItems('assets/images/shopping4.png', 'You & I (Forever)', 'Jessie Ware'),
        buildItems('assets/images/shopping.png', '致姗姗来迟的你', '阿肆/林宥嘉'),
        buildItems('assets/images/shopping2.png', 'Tell Me (韩文版)', '金润吉'),
        buildItems('assets/images/shopping3.png', 'Can We Dance', 'The Vamps'),
        buildItems('assets/images/shopping4.png', 'Take Me to Church', 'Hozier'),
        buildItems('assets/images/shopping.png', 'Upside Down', 'JVKE / Charlie Puth'),
      ],
    );
  }

  Widget buildItems(String path, String titleText, String followersText) {
    return Column(
      children: [
        Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(path, fit: BoxFit.fitHeight),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.add_circle,
                color: Colors.red,
                size: 40,
              ),
            ),
          ],
        ), // profile image
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              titleText,
              style: TextStyle(fontSize: 13),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              followersText,
              style: TextStyle(fontSize: 12, color: Colors.grey[400]),
            ),
          ),
        ),
      ],
    );
  }
}
