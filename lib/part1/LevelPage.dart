import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LevelPage extends StatefulWidget {
  @override
  _LevelPageState createState() => _LevelPageState();
}

class _LevelPageState extends State<LevelPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: new AppBar(
        title: new Text('等级介绍'),
      ),
      body: Column(
        children: <Widget>[
          buildTitle(),
          buildContents('科员', Icons.star_border, '0', '0'),
          buildContents('科员', Icons.star_border, '1', '60'),
          buildContents('副科长', Icons.star_half, '2', '300'),
          buildContents('副科长', Icons.star_half, '3', '600'),
          buildContents('科长', Icons.star, '4', '900'),
          buildContents('科长', Icons.star, '5', '1400'),
          buildContents('副处长', Icons.brightness_3, '6', '2100'),
          buildContents('副处长', Icons.brightness_3, '7', '4200'),
          buildContents('处长', Icons.brightness_2, '8', '6300'),
          buildContents('处长', Icons.brightness_2, '9', '9400'),
          buildContents('副局长', Icons.brightness_1, '10', '12600'),
          buildContents('副局长', Icons.brightness_1, '11', '15700'),
          buildContents('副书记', Icons.timelapse, '12', '18900'),
          buildContents('局长', Icons.brightness_4, '13', '27100'),
          buildContents('书记', Icons.brightness_5, '14', '37800'),
          buildContents('元老', Icons.brightness_6, '15', '50400'),
          buildContents('长老', Icons.brightness_7, '16', '65100'),
        ],
      ),
    );
  }

  Widget buildTitle() {
    double width = MediaQuery.of(context).size.width / 4 - 5;

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: width,
          child: Center(
            child: Text('等级头衔',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
          ),
        ),
        Container(
          width: width,
          child: Center(
            child: Text('等级图标',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
          ),
        ),
        Container(
          width: width,
          child: Center(
            child: Text('等级',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
          ),
        ),
        Container(
          width: width,
          child: Center(
            child: Text('所需积分',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
          ),
        ),
      ],
    );
  }

  Widget buildContents(String text, IconData icon, String level, String score) {
    double width = MediaQuery.of(context).size.width / 4 - 5;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: width,
          child: Center(
            child: Text(text),
          ),
          padding: EdgeInsets.symmetric(horizontal: 5),
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: new Border.all(color: Colors.red, width: 1),
          ),
        ),
        Container(
          width: width,
          padding: EdgeInsets.all(5),
          child: Icon(
            icon,
            size: 20,
            color: Colors.red,
          ),
        ),
        Container(
          width: width,
          padding: EdgeInsets.all(5),
          child: Center(
            child: Text(level),
          ),
        ),
        Container(
          width: width,
          padding: EdgeInsets.all(5),
          child: Center(
            child: Text(score),
          ),
        ),
      ],
    );
  }
}
