import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_news/part2/contents1/RecentPage.dart';

class HomeListPage extends StatefulWidget {
  const HomeListPage({Key? key}) : super(key: key);
  @override
  _HomeListPageState createState() => _HomeListPageState();
}

class _HomeListPageState extends State<HomeListPage> {
  List<Widget> listContent = <Widget>[];


  Future<String> loadData() async {
    await Future.delayed(const Duration(seconds: 5));
    print('Loading data...');
    return '1240717848';
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // listContent.add(RecentPage());
    print('222222222');
    return ListView(
      children: listContent,
    );
  }

}
