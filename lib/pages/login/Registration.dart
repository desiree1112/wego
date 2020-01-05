import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegistrationPage extends StatefulWidget {
  RegistrationPage({Key key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _registerTelephoneController = TextEditingController();
  final _registerUserNameController = TextEditingController();
  final _registerPassWordController = TextEditingController();
  final _registerAuthCodeController = TextEditingController();

  String _getAuthCodeUrl = "http://49.233.165.202:8085/sso/getAuthCode";
  String _postRegisterUrl = "http://49.233.165.202:8085/sso/register";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("注册wego")),
        body: Center(
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
                              controller: _registerTelephoneController,
                              decoration: InputDecoration(
                                  labelText: "请输入注册手机号",
                                  border: OutlineInputBorder()),
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
                              //obscureText: true,
                              controller: _registerPassWordController,
                              decoration: InputDecoration(
                                  labelText: "请输入密码",
                                  border: OutlineInputBorder()),
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
                              controller: _registerUserNameController,
                              decoration: InputDecoration(
                                  labelText: "请输入用户名",
                                  border: OutlineInputBorder()),
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
                              controller: _registerAuthCodeController,
                              decoration: InputDecoration(
                                  hintText: "请输入验证码",
                                  border: OutlineInputBorder()),
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Container(
                            child: RaisedButton(
                              child: Text("获取验证码"),
                              color: Colors.blue,
                              elevation: 20,
                              onPressed: () async {
                                try {
                                  Response response = await Dio().get(
                                      this._getAuthCodeUrl,
                                      queryParameters: {
                                        "telephone": this
                                            ._registerTelephoneController
                                            .text
                                      });
                                  print(response.data.toString());
                                  Fluttertoast.showToast(
                                    msg: "验证码：${response.data["data"]}",
                                  );
                                } catch (e) {
                                  print(e);
                                }
                              },
                            ),
                          )
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
                                child: Text("注册"),
                                onPressed: () async {
                                  FormData formData = new FormData.fromMap({
                                    "username":
                                        this._registerUserNameController.text,
                                    "password":
                                        this._registerPassWordController.text,
                                    "telephone":
                                        this._registerTelephoneController.text,
                                    "authCode":
                                        this._registerAuthCodeController.text,
                                  });
                                  try {
                                    Response response = await Dio().post(
                                      this._postRegisterUrl,
                                      data: formData,
                                    );
                                    print(response.data.toString());
                                  } catch (e) {
                                    print(e);
                                  }
                                  //添加验证条件，目前直接返回
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]))));
  }
}
