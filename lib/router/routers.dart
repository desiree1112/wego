import 'package:flutter/material.dart';

import 'package:wego/pages/login/Registration.dart';
import 'package:wego/pages/index.dart';
import 'package:wego/pages/login/login.dart';
import 'package:wego/pages/shopping.dart';

final routers = {
  '/' : (context) => LoginPage(),
  '/index' : (context) => IndexPage(),
  '/registration' : (context) => RegistrationPage(),
  '/shopping' : (context) => ShoppingPage(),
};

var onGenerateRouter = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routers[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
