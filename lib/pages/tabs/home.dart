import 'package:flutter/material.dart';
import 'package:wego/pages/shopping.dart';

class HomeTabPage extends StatelessWidget {
  const HomeTabPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeTabConstructor();
  }
}

class HomeTabConstructor extends StatefulWidget {
  HomeTabConstructor({Key key}) : super(key: key);

  @override
  _HomeTabConstructorState createState() => _HomeTabConstructorState();
}

class _HomeTabConstructorState extends State<HomeTabConstructor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        spacing: 20,
        runSpacing: 20,
        alignment: WrapAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 60.0,
            height: 40.0,
            child: RaisedButton(
              child: Text("购物"),
              color: Colors.green,
              textColor: Colors.red,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => new ShoppingPage(),
                  fullscreenDialog : false,
                ));
              },
            ),
          ),
          Container(
            width: 60.0,
            height: 40.0,
            child: RaisedButton(
              child: Text("教育"),
              color: Colors.red,
              textColor: Colors.black,
              onPressed: null,
            ),
          ),
        ],
      ),
    );
  }
}
