import 'package:flutter/material.dart';

class RecentPage extends StatefulWidget {
  @override
  _RecentPageState createState() => _RecentPageState();
}

class _RecentPageState extends State<RecentPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          buildContents('assets/images/shopping_alpha.png', 'Heart', Colors.red),
          buildContents('assets/images/shopping2_alpha.png', 'Star', Colors.blue),
          buildContents('assets/images/shopping3_alpha.png', 'Hexagon', Colors.orange),
          buildContents('assets/images/shopping4_alpha.png', 'Chat', Colors.teal),
        ],
      ),
    );
  }

  Widget buildContents(String path, String text, Color color) {
    return Expanded(
      flex: 1,
      // padding: const EdgeInsets.all(5),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: CircleAvatar(
              child: Image.asset(path, width: 40, height: 40, fit: BoxFit.fill),
              backgroundColor: color,
              radius: 30,
            ),
          ),
          Text(
            text,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
