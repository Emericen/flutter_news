import 'package:flutter/material.dart';

class FreeFlowNewsPage extends StatefulWidget {
  @override
  _FreeFlowNewsPageState createState() => _FreeFlowNewsPageState();
}

class _FreeFlowNewsPageState extends State<FreeFlowNewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text('免流量看新闻'),
      ),

      body: Column(
        children: <Widget>[
          buildCards('白金卡', '电信', '1..............', '2.....................', Colors.indigo),
          buildCards('乐卡', '电信', '1..............', '2.....................', Colors.red),
          buildCards('态度包', '移动', '1..............', '2.....................', Colors.yellow),
          buildCards('流量包', '联通', '1..............', '2.....................', Colors.green),
        ],
      ),

      // body: buildContents(BlendMode.color, '文字内容1'),

      // body: GridView.count(
      //   crossAxisCount: 2,
      //   padding: EdgeInsets.all(10),
      //   children: <Widget>[
      //     // 以下是可以变化的
      //     buildContents2(BlendMode.clear, 'clear'),
      //     buildContents2(BlendMode.color, 'color'),
      //     buildContents2(BlendMode.colorDodge, 'colorDodge'),
      //     buildContents2(BlendMode.colorBurn, 'colorBurn'),
      //     buildContents2(BlendMode.difference, 'difference'),
      //     buildContents2(BlendMode.dstATop, 'dstATop'),
      //     buildContents2(BlendMode.dstOut, 'dstOut'),
      //     buildContents2(BlendMode.dstOver, 'dstOver'),
      //     buildContents2(BlendMode.exclusion, 'exclusion'),
      //     buildContents2(BlendMode.srcATop, 'srcATop'),
      //     buildContents2(BlendMode.srcIn, 'srcIn'),
      //     buildContents2(BlendMode.srcOut, 'srcOut'),
      //     buildContents2(BlendMode.saturation, 'saturation'),
      //     buildContents2(BlendMode.screen, 'screen'),
      //     buildContents2(BlendMode.softLight, 'softLight'),
      //     buildContents2(BlendMode.hardLight, 'hardLight'),
      //     buildContents2(BlendMode.hue, 'hue'),
      //     buildContents2(BlendMode.lighten, 'lighten'),
      //     buildContents2(BlendMode.luminosity, 'luminosity'),
      //     buildContents2(BlendMode.modulate, 'modulate'),
      //     buildContents2(BlendMode.overlay, 'overlay'),
      //     buildContents2(BlendMode.plus, 'plus'),
      //     buildContents2(BlendMode.xor, 'xor'),
      //
      //     // 以下是不变的
      //     buildContents2(BlendMode.darken, 'darken'),
      //     buildContents2(BlendMode.dst, 'dst'),
      //     buildContents2(BlendMode.dstIn, 'dstIn'),
      //     buildContents2(BlendMode.src, 'src'),
      //     buildContents2(BlendMode.srcOver, 'srcOver'),
      //     buildContents2(BlendMode.multiply, 'multiply'),
      //   ],
      // ),

      // body: buildContents3(),
    );
  }

  Widget buildCards(String title1, String title2, String title3, String title4, Color bubbleColor) {
    return Stack(
      children: <Widget>[
        Card(
          elevation: 10,
          margin: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(title1, style: TextStyle(fontSize: 20)),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      // padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: bubbleColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          title2,
                          style: TextStyle(
                            color: Colors.grey[50],
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(title3, style: TextStyle(fontSize: 13, color: Colors.grey)),
                Text(title4, style: TextStyle(fontSize: 13, color: Colors.grey)),
              ],
            ),
          ),
        ),
        Positioned(
          left: 240,
          top: 45,
          width: 90,
          height: 33,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Text(
                '立即领取',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 15
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildContents1(BlendMode mode, String name) {
    return Container(
      // 在绘制Container之前对Matrix(矩阵)进行操作，如旋转、平移、缩放等
      transform: Matrix4.identity()..rotateZ(25 * 3.1415927 / 180),
      // 缩放 Matrix4.identity()..scale(1.5)
      // 平移 Matrix4.identity()..translate(10.0, 10.0, 0.0),

      width: 300.0,
      height: 100.0,

      // 背景颜色color属性不能和decoration属性同时使用
      // color: Colors.grey[300],
      // 外边框
      margin: EdgeInsets.all(50.0),
      padding: EdgeInsets.all(10.0),
      alignment: Alignment.topRight,

      constraints: BoxConstraints.expand(width: 200.0, height: 200.0),

      decoration: BoxDecoration(
          color: Colors.orange,
          border: Border.all(
            color: Colors.blue,
            width: 1.0,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(const Radius.circular(8.0)),
          // borderRadius: BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10)),
          // borderRadius: BorderRadius.vertical(top: Radius.circular(10), bottom: Radius.circular(10))

          gradient: LinearGradient(
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
            colors: [
              Colors.orange[50]!,
              Colors.orange[400]!,
              Colors.orange[900]!,
            ],
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.blue,
              offset: Offset(15, 15),
              blurRadius: 10.0,
            ),
            BoxShadow(
              color: Colors.yellow,
              offset: Offset(10, 10),
              blurRadius: 10,
            ),
          ],

          // BoxShape.circle不能和borderRadius同时使用
          // BoxShape.rectangle和borderRadius同时使用是:圆角矩形
          shape: BoxShape.rectangle,

          //图层叠加模式 类似于PS的涂层的概念 一共29种
          backgroundBlendMode: mode),

      child: Text(
        name,
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }

  Widget buildContents2(BlendMode mode, String name) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: 100,
          top: 100,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
        ),
        Container(
          width: 300,
          height: 100,
          margin: EdgeInsets.all(50),
          padding: EdgeInsets.all(10),
          alignment: Alignment.topRight,
          decoration: BoxDecoration(
              color: Colors.orange,
              border: Border.all(
                color: Colors.orange,
                width: 1.0,
                style: BorderStyle.solid,
              ),
              backgroundBlendMode: mode),
          child: Text(
            name,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildContents3() {
    return Card(
      child: Container(
        width: 100,
        height: 100,
      ),
      color: Colors.orange,
      elevation: 30,

      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.blue,
          width: 1.0,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),

      // shape: CircleBorder(
      //   side: BorderSide(
      //     color: Colors.blue,
      //     width: 1.0,
      //     style: BorderStyle.solid,
      //     // style: BorderStyle.none,
      //   )
      // ),

      margin: EdgeInsets.all(50.0),
      clipBehavior: Clip.antiAlias,
    );
  }
}
