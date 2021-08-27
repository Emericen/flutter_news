import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_news/part2/contents1/RecentPage.dart';
import 'package:flutter_news/part2/model/NewsModel.dart';

class HomeListPage extends StatefulWidget {
  const HomeListPage({Key? key}) : super(key: key);

  @override
  _HomeListPageState createState() => _HomeListPageState();
}

class _HomeListPageState extends State<HomeListPage> {
  late List<Widget> listContent;

  // ScrollController _controller = ScrollController();
  // ScrollPhysics _physics = ClampingScrollPhysics();

  @override
  void initState() {
    super.initState();
    listContent = <Widget>[];
    listContent.add(RecentPage());
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: rootBundle.loadString('assets/news.json'),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          NewsModel model = newsModuleFromJson(snapshot.data);
          for (int i = 0; i < model.data.length; i++) {
            Data bean = model.data[i];
            switch (bean.type) {
              case '1':
                Widget widget = buildItem1(bean);
                listContent.add(widget);
                listContent.add(Divider(height: 1, color: Colors.grey));
                break;
              case '2':
                Widget widget2 = buildItem2(bean);
                listContent.add(widget2);
                listContent.add(Divider(height: 1, color: Colors.grey));
                break;
              case '3':
                Widget widget3 = buildItem3(bean);
                listContent.add(widget3);
                listContent.add(Divider(height: 1, color: Colors.grey));
                break;
            }
          }
          return ListView(
            children: listContent,
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget buildItem1(Data bean) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            bean.title,
            style: TextStyle(fontSize: 17),
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text(
                  bean.tag,
                  style: TextStyle(fontSize: 10, color: Colors.red),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text(
                  bean.source,
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),
              ),
              buildCommentCountText(bean.commentCount),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildCommentCountText(String commentCount) {
    if (int.parse(commentCount) >= 2000) {
      return Container(
        padding: EdgeInsets.all(1),
        margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
        decoration: new BoxDecoration(
          border: new Border.all(color: Colors.red, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Text('$commentCount跟帖', style: TextStyle(fontSize: 10, color: Colors.red)),
      );
    } else {
      return Container(
        padding: EdgeInsets.all(1),
        margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
        child: Text('$commentCount跟帖', style: TextStyle(fontSize: 12, color: Colors.grey)),
      );
    }
  }

  Widget buildItem2(Data bean) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  bean.title,
                  style: TextStyle(fontSize: 17),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                      child: Text(
                        bean.tag,
                        style: TextStyle(fontSize: 10, color: Colors.red),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                      child: Text(
                        bean.source,
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                    ),
                    buildCommentCountText(bean.commentCount),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Image.asset(
              bean.thumb,
              width: 110,
              height: 80,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildItem3(Data bean) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildTitleText(bean),
          Row(
            children: buildImages(MediaQuery.of(context).size.width, bean),
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Text(
                  bean.source,
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> buildImages(double width, Data bean) {
    List<Widget> children = bean.images.map((urls) {
      if (bean.images.length == 1) {
        return Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Image.asset(urls.imgsrc, width: width - 20, height: 150, fit: BoxFit.fill));
      } else {
        return Container(
            padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
            child: Image.asset(urls.imgsrc, width: (width - 50) / 3, height: 100, fit: BoxFit.fill));
      }
    }).toList();
    return children;
  }

  Widget buildTitleText(Data bean) {
    if (bean.tag == "独家") {
      return Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
            margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
            decoration: new BoxDecoration(
              color: Colors.deepOrangeAccent,
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Text(
              bean.tag,
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            bean.title,
            style: TextStyle(fontSize: 17),
          ),
        ],
      );
    } else {
      return Text(
        bean.title,
        style: TextStyle(fontSize: 17),
      );
    }
  }
}
