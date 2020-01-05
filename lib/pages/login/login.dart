//flutter
import 'dart:convert';
import 'package:flutter/material.dart';

//dart
import 'package:dio/dio.dart';

//model class
import 'package:wego/ModelClass/common_class.dart';

//wego
import 'package:wego/pages/index.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("登录wego")), body: LoginConstructor());
  }
}

class LoginConstructor extends StatefulWidget {
  LoginConstructor({Key key}) : super(key: key);

  @override
  _LoginConstructorState createState() => _LoginConstructorState();
}

class _LoginConstructorState extends State<LoginConstructor> {
  final _userNameController = new TextEditingController();
  final _passWordController = new TextEditingController();

  String _postLoginUrl = "http://49.233.165.202:8085/sso/login";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              //屏幕居中
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        controller: this._userNameController,
                        decoration: InputDecoration(
                            labelText: "请输入用户名", border: OutlineInputBorder()),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        controller: this._passWordController,
                        decoration: InputDecoration(
                            labelText: "请输入密码", border: OutlineInputBorder()),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 40,
                        child: RaisedButton(
                          child: Text("登录"),
                          onPressed: () async {
                            try {
                              Response response = await Dio().post(
                                this._postLoginUrl,
                                queryParameters: {
                                  "username": this._userNameController.text,
                                  "password": this._passWordController.text
                                },
                              );
                              print(response.data.toString());
                              CommonClass result = new CommonClass.fromJson(json.decode(response.toString()));
                              print(result.data);
                              if (result.code == 200) {
                                Navigator.pushNamed(context, '/index');
                              }
                            } catch (e) {
                              print(e);
                            }
                            // Navigator.of(context).pushAndRemoveUntil(
                            //     new MaterialPageRoute(
                            //         builder: (context) =>
                            //             new IndexPage(index: 0)),
                            //     (route) => route == null);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 40,
                        child: OutlineButton(
                          child: Text("注册"),
                          onPressed: () {
                            Navigator.pushNamed(context, '/registration');
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }
}
