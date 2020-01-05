import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

//model class
import 'package:wego/ModelClass/product_cate_list.dart';


class ShoppingPage extends StatelessWidget {
  const ShoppingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShoppingPageConstructor();
  }
}

class ShoppingPageConstructor extends StatefulWidget {
  ShoppingPageConstructor({Key key}) : super(key: key);

  @override
  _ShoppingPageConstructorState createState() => _ShoppingPageConstructorState();
}

class _ShoppingPageConstructorState extends State<ShoppingPageConstructor> {
  var _productCateList = new List<ProductCateList>(6);
  String _getProductCateListUrl = "http://49.233.165.202:8085/home/productCateList/";

  Future<ProductCateList> _getProductCateList(int parentId) async {
    ProductCateList result;
    String getUrl = this._getProductCateListUrl + "${parentId}";
    print(getUrl);
    Response response = await Dio().get(getUrl);
    result = new ProductCateList.fromJson(json.decode(response.toString()));
    return result;
  }

  Future _getAllCateList() async {
    _productCateList[0] = await _getProductCateList(0);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getAllCateList();

  }

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("123"),
    );
  }
}