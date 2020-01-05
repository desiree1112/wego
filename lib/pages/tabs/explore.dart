import 'package:flutter/material.dart';

class ExploreTabPage extends StatefulWidget {
  ExploreTabPage({Key key}) : super(key: key);

  @override
  _ExploreTabPageState createState() => _ExploreTabPageState();
}

class _ExploreTabPageState extends State<ExploreTabPage> {
  int _exploreIndex = 1;
  var _exploreLayoutList = [
    ExploreChatLayout(),
    ExploreWeHiLayout(),
    ExploreAddressListLayout(),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // IconButtonWithText("消息", Icons.chat_bubble_outline, (){}),
            // IconButtonWithText("一起嗨", Icons.all_inclusive, (){}),
            // IconButtonWithText("通讯录", Icons.people_outline, (){}),
            IconButton(
              icon: Icon(Icons.chat_bubble_outline),
              tooltip: "消息",
              onPressed: (){
                setState(() {
                  this._exploreIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.all_inclusive),
              tooltip: "一起嗨",
              onPressed: (){
                setState(() {
                  this._exploreIndex = 1;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.people_outline),
              tooltip: "通讯录",
              onPressed: (){
                setState(() {
                  this._exploreIndex = 2;
                });
              },
            ),
          ],
        ),
        Expanded(
          child: this._exploreLayoutList[this._exploreIndex],
        ),
      ],
    );
  }
}

class IconButtonWithText extends StatefulWidget {
  final String iconText;
  final IconData iconWhich;
  final Function callbackFunc;
  IconButtonWithText(this.iconText, this.iconWhich, this.callbackFunc,
      {Key key})
      : super(key: key);

  @override
  _IconButtonWithTextState createState() => _IconButtonWithTextState(
      this.iconText, this.iconWhich, this.callbackFunc);
}

class _IconButtonWithTextState extends State<IconButtonWithText> {
  String _iconText;
  IconData _iconWhich;
  Function _callbackFunc;
  _IconButtonWithTextState(this._iconText, this._iconWhich, this._callbackFunc);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IconButton(icon: Icon(this._iconWhich), onPressed: this._callbackFunc),
        //SizedBox(height: 10,),
        Text(this._iconText)
      ],
    );
  }
}

class ExploreChatLayout extends StatefulWidget {
  ExploreChatLayout({Key key}) : super(key: key);

  @override
  _ExploreChatLayoutState createState() => _ExploreChatLayoutState();
}

class _ExploreChatLayoutState extends State<ExploreChatLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("聊个鸡儿的天", style: TextStyle(fontSize: 40)),
    );
  }
}

class ExploreWeHiLayout extends StatefulWidget {
  ExploreWeHiLayout({Key key}) : super(key: key);

  @override
  _ExploreWeHiLayoutState createState() => _ExploreWeHiLayoutState();
}

class _ExploreWeHiLayoutState extends State<ExploreWeHiLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("嗨nmb", style: TextStyle(fontSize: 40)),
    );
  }
}

class ExploreAddressListLayout extends StatefulWidget {
  ExploreAddressListLayout({Key key}) : super(key: key);

  @override
  _ExploreAddressListLayoutState createState() => _ExploreAddressListLayoutState();
}

class _ExploreAddressListLayoutState extends State<ExploreAddressListLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("一群虚逼", style: TextStyle(fontSize: 40)),
    );
  }
}