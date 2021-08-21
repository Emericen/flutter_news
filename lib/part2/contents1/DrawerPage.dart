import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth *4/5 ,
      child: Scaffold(
        body: Padding(
          padding: MediaQuery.of(context).padding,
          child: Text('side panel'),
        ),
      ),
    );
  }
}
