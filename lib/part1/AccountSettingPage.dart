import 'package:flutter/material.dart';

class AccountSettingPage extends StatefulWidget {
  @override
  _AccountSettingPageState createState() => _AccountSettingPageState();
}

class _AccountSettingPageState extends State<AccountSettingPage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: new AppBar(
        title: new Text('账号设置'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              '账号',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            trailing: Text(
              'xxx@usc.edu',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            onTap: () {
              print('clicked on 账户');
            },
          ), //账户
          ListTile(
            title: Text('绑定手机号'),
            subtitle: Text(
              '绑定成功后可通过手机号快速登录',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            trailing: Container(
              width: 80,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '去绑定',
                    style: TextStyle(color: Colors.red),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    size: 20,
                    color: Colors.grey[400],
                  ),
                ],
              ),
            ),
            onTap: () {
              print('clicked on 绑定手机号');
            },
          ), //绑定手机号
          Divider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          ListTile(
            title: Text('头像'),
            trailing: Container(
              width: 80,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  ClipOval(
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      'assets/images/shopping2.png',
                      width: 35,
                      height: 35,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Colors.grey[400],
                  ),
                ],
              ),
            ),
            onTap: () {
              print('clicked on 头像');
            },
          ), //头像
          ListTile(
            title: Text('昵称'),
            trailing: Container(
              width: 80,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Eddy'),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Colors.grey[400],
                  ),
                ],
              ),
            ),
            onTap: () {
              print('clicked on 昵称');
            },
          ), //昵称
          ListTile(
            title: Text('生日'),
            trailing: Container(
              width: 180,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('1998-02-16'),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Colors.grey[400],
                  ),
                ],
              ),
            ),
            onTap: () {
              print('clicked on 生日');
            },
          ), //生日
          ListTile(
            title: Text('性别'),
            trailing: Container(
              width: 80,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('男'),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Colors.grey[400],
                  ),
                ],
              ),
            ),
            onTap: () {
              print('clicked on 性别');
            },
          ), //性别
          Divider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          SwitchListTile(
            title: Text('匿名跟帖'),
            subtitle: Text('其他网友将不会看到你的用户名，头像和个人主页'),
            value: true,
            onChanged: (action) {
              action=!action;
              print('匿名跟帖 switched to ' + action.toString());
            },
          ), //匿名跟帖
          ListTile(
            title: Text('跟帖设备名称'),
            trailing: Container(
              width: 180,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('iPhone Xs Max'),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Colors.grey[400],
                  ),
                ],
              ),
            ),
            onTap: () {
              print('clicked on 设备');
            },
          ), //设备
          ListTile(
            title: Text('我的等级'),
            trailing: Container(
              width: 180,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('LV0 跟帖局科员'),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Colors.grey[400],
                  ),
                ],
              ),
            ),
            onTap: () {
              print('clicked on 等级');
            },
          ), //我的等级
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color:Colors.red,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Text(
                '登出',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ),//登出
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '永久注销账号',
                style: TextStyle(color: Colors.grey[400]),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size:10,
                color: Colors.grey[400],
              ),
            ],
          ),//注销账号
        ],
      ),
    );
  }
}
