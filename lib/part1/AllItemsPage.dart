import 'package:flutter/material.dart';

class AllItemsPage extends StatefulWidget {
  const AllItemsPage({Key? key}) : super(key: key);

  @override
  _AllItemsPageState createState() => _AllItemsPageState();
}

//自适应布局 SizedBox、Wrap、Expanded组件
class _AllItemsPageState extends State<AllItemsPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: new Text('所有栏目'),
      ),
      body: buildContents(screenWidth),
    );
  }

  Widget buildContents(double width) {
    List<String> data = [
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

    return SizedBox(
      width: width,


      // btw, wrap vs. gridview: gridview can slid if items extend over one page, gridview also takes more performance

      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        direction: Axis.horizontal,
        verticalDirection: VerticalDirection.down,
        alignment: WrapAlignment.spaceEvenly,
        crossAxisAlignment: WrapCrossAlignment.start,

        // loop / iterate like this
        children: data.map((dataEntry) {
          return Chip(
            label: Container(
              width: 55,
              child: Center(
                child: Text(dataEntry),
              ),
            ),
            labelStyle: TextStyle(
              color: dataEntry == '头条' ? Colors.red : Colors.black,
            ),
            labelPadding: EdgeInsets.symmetric(horizontal: 15),
            backgroundColor: Colors.white,
            padding: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.grey[200]!,
                width: 1.0,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          );
        }).toList(),

        // children: <Widget>[
        //   Chip(
        //     label: Text('关注'),
        //     labelStyle: TextStyle(color: Colors.red),
        //     labelPadding: EdgeInsets.symmetric(horizontal: 15),
        //
        //     backgroundColor: Colors.white,
        //     padding: EdgeInsets.symmetric(horizontal: 10),
        //     shape: RoundedRectangleBorder(
        //       side: BorderSide(
        //         color: Colors.red,
        //         width: 1.0,
        //         style: BorderStyle.solid,
        //       ),
        //       borderRadius: BorderRadius.circular(20),
        //     ),
        //     elevation: 10,
        //     shadowColor: Colors.green,
        //     clipBehavior: Clip.antiAlias,
        //
        //     // // 自动焦点
        //     // autofocus: false,
        //     // // 有焦点时的操作
        //     // focusNode: FocusNode(debugLabel: '关注'),
        //     // materialTapTargetSize: MaterialTapTargetSize.padded, //这个一般用不到
        //
        //     // 左侧加号
        //     avatar: CircleAvatar(
        //       backgroundColor: Colors.white,
        //       radius: 10,
        //       child: Icon(
        //         Icons.add,
        //         color: Colors.red,
        //         size: 15,
        //       ),
        //     ),
        //
        //     // deleteIcon 自定义按钮 需要和onDelete一起用
        //     deleteIcon: Icon(
        //       Icons.delete,
        //       color: Colors.red,
        //       size: 20,
        //     ),
        //
        //     // 右侧按钮的颜色 直接用于onDelete属性值
        //     // deleteIconColor: Colors.blue,
        //
        //     onDeleted: () {
        //       print('Chip Click');
        //     },
        //   ),
        // ],
      ),
    );
  }

// Widget buildContents() {
//   return Column(
//     children: <Widget>[
//
//       // // sizebox 主要用于约束child
//       // SizedBox(
//       //   width: 100,
//       //   height: 100,
//       //   child: Container(
//       //     color: Colors.red,
//       //   ),
//       // ),
//       // SizedBox(
//       //   width: 100,
//       //   height: 100,
//       //   child: Container(
//       //     // container设置宽高不会有效果
//       //     width: 200,
//       //     height: 200,
//       //     color: Colors.green,
//       //   ),
//       // ),
//       // SizedBox(
//       //   width: 100,
//       //   height: 100,
//       //   child: Container(
//       //     width: 50,
//       //     height: 50,
//       //     color: Colors.blue,
//       //   ),
//       // ),
//       // SizedBox(
//       //   child: Container(
//       //     width: 110,
//       //     height: 110,
//       //     color: Colors.pink,
//       //   ),
//       // ),
//       // SizedBox(
//       //   child: Container(
//       //     width: 50,
//       //     height: 50,
//       //     color: Colors.yellow,
//       //   ),
//       // ),
//
//
//
//       // Wrap(
//       //
//       //   // wrap 会自动换行
//       //   alignment: WrapAlignment.spaceBetween,
//       //   spacing: 5.0,
//       //   direction: Axis.horizontal,
//       //   runAlignment: WrapAlignment.spaceAround, // 这个据说和alignment差不多
//       //   runSpacing: 10.0,
//       //   crossAxisAlignment: WrapCrossAlignment.start,
//       //   textDirection: TextDirection.ltr,
//       //   verticalDirection: VerticalDirection.up,
//       //
//       //
//       //   children: [
//       //
//       //     // set the width & height all to 100, and play around w/ them
//       //     // 以下是柱形图案例
//       //
//       //
//       //     Container(
//       //       width: 10,
//       //       height: 69,
//       //       color: Colors.green,
//       //     ),
//       //     Container(
//       //       width: 10,
//       //       height: 102,
//       //       color: Colors.blue,
//       //     ),
//       //     Container(
//       //       width: 10,
//       //       height: 130,
//       //       color: Colors.red,
//       //     ),
//       //     Container(
//       //       width: 10,
//       //       height: 97,
//       //       color: Colors.orange,
//       //     ),
//       //     Container(
//       //       width: 10,
//       //       height: 124,
//       //       color: Colors.deepPurple,
//       //     ),
//       //     Container(
//       //       width: 10,
//       //       height: 129,
//       //       color: Colors.teal,
//       //     ),
//       //     Container(
//       //       width: 10,
//       //       height: 131,
//       //       color: Colors.pink,
//       //     ),
//       //     Container(
//       //       width: 10,
//       //       height: 55,
//       //       color: Colors.amber,
//       //     ),
//       //   ],
//       //
//       //
//       // ),
//
//       Expanded(
//         flex: 2,
//         child: Container(
//           width: 150,
//           height: 50,
//           color: Colors.blue,
//         ),
//       ),
//       Expanded(
//         flex: 3,
//         child: Container(
//           width: 50,
//           height: 2500,
//           color: Colors.red,
//         ),
//       ),
//       Expanded(
//         flex: 4,
//         child: Container(
//           width: 50,
//           height: 250,
//           color: Colors.yellow,
//         ),
//       ),
//       Expanded(
//         flex: 1,
//         child: Container(
//           width: 50,
//           // height: 50,
//           color: Colors.green,
//         ),
//       ),
//
//     ],
//   );
// }
}
