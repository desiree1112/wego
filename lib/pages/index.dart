import 'package:flutter/material.dart';

import 'package:wego/pages/tabs/city.dart';
import 'package:wego/pages/tabs/explore.dart';
import 'package:wego/pages/tabs/home.dart';
import 'package:wego/pages/tabs/myInfo.dart';
import 'package:wego/pages/tabs/shoppingCart.dart';

class IndexPage extends StatefulWidget {
  final index;
  IndexPage({Key key, this.index = 0}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState(this.index);
}

class _IndexPageState extends State<IndexPage> {
  int _currentIndex = 0;
  var _tabList = [
    CityTabPage(),
    ExploreTabPage(),
    HomeTabPage(),
    ShoppintCartTabPage(),
    MyInfoTabPage()
  ];

  _IndexPageState(this._currentIndex);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: _tabList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.location_city),
            title: Text("城市特色"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text("发现"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("主页"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("购物车"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text("我的"),
          ),
        ],
      ),
    ));
  }
}
