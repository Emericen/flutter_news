import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef SearchCallback = void Function(String data);

class SearchBar extends StatefulWidget {
  // const SearchBar({Key? key}) : super(key: key);

  SearchBar(Color statusBarColor, {Key? key, required this.onCancelSearch, required this.onSearchQueryChanged})
      : super(key: key);

  final VoidCallback onCancelSearch;

  final SearchCallback onSearchQueryChanged;

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        title: TitleContents(widget.onSearchQueryChanged),
        titleSpacing: 0,
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            size: 35,
            color: Colors.grey[400],
          ),
          onPressed: widget.onCancelSearch,
        ),
      ),
    );
  }

  Widget buildSearchBox() {
    /// We can specify keyboard type, search box decoration, and many others in TextField.
    /// Hit a Ctrl-alt-b on TextField and take a look at its code.
    return TextField();

    /// PS. the login TextField we had on flashcard is one with "UnderlineInputBorder"
    /// PPS. 真的 看一下码 TextField东西很多！功能非常强！(onChanged, onSubmitted, cursor settings...)
  }
}

class TitleContents extends StatefulWidget {
  // const TitleContents({Key? key}) : super(key: key);

  /// NOTE: NEED TO ADD THIS PART!
  SearchCallback onSearchQueryChanged;

  TitleContents(this.onSearchQueryChanged);

  @override
  _TitleContentsState createState() => _TitleContentsState();
}

class _TitleContentsState extends State<TitleContents> {
  TextEditingController _searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 350,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 30,
            width: 280,
            child: TextField(
              controller: _searchFieldController,

              /// 键盘类型
              keyboardType: TextInputType.datetime,

              /// 键盘颜色
              keyboardAppearance: Brightness.light,

              /// keyboard enter type (search, send, complete, etc.)
              textInputAction: TextInputAction.search,

              /// what characters are capitalized
              textCapitalization: TextCapitalization.characters,

              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Colors.grey[400]!,
                    // style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  // borderRadius: BorderRadius.all(Radius.elliptical(0, 0))
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Colors.grey[400]!,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Colors.grey[400]!,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Colors.grey[400]!,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Colors.red,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Colors.red,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),

                contentPadding: EdgeInsets.zero,

                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 20,
                ),

                /// 后缀
                suffixIcon: InkWell(
                  child: Icon(
                    Icons.close,
                    color: Colors.grey,
                    size: 20,
                  ),
                  onTap: clearSearchQuery,
                ),

                /// suffix 和 suffixText不能同时使用
                // suffix: Text('suffix'),
                // suffixText: '后缀',
                // suffixStyle: TextStyle(color:Colors.white),

                /// 输入框左侧的提示图标
                // icon: Icon(
                //   Icons.search,
                //   color: Colors.grey,
                //   size: 20,
                // ),

                /// 输入框上部的提示文本
                // labelText: 'labelText',
                // labelStyle: TextStyle(
                //   color: Colors.white,
                //   fontSize: 14,
                // ),

                /// 输入框下部的提示文本
                // helperText: 'helperText',
                // helperStyle: TextStyle(color: Colors.white, fontSize: 14),

                /// 输入框隐藏的提示文本
                hintText: '最新劲爆新闻实时推送',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                hintMaxLines: 1,

                /// 错误提示文本
                // errorText: 'errorText',
                // errorStyle: TextStyle(color: Colors.grey, fontSize:14),
                // errorMaxLines: 1,

                enabled: true,
                // isDense: true,
                // alignLabelWithHint: true,
              ),
              cursorColor: Colors.red,
              autofocus: true,
              style: TextStyle(color: Colors.black12),

              onChanged: widget.onSearchQueryChanged,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: GestureDetector(
              onTap: () {
                print('点击了搜索按钮');
              },
              child: Text(
                '搜索',
                style: TextStyle(color: Colors.black54, fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }

  clearSearchQuery() {
    _searchFieldController.clear();
    widget.onSearchQueryChanged('');
  }


}
