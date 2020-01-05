/* wego
 * version   : v0.1 (demo)
 * date      : 2019-12-6
 * 
 */
import 'package:flutter/material.dart';

import 'router/routers.dart';

void main() => runApp(WegoApp());

class WegoApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wego',
      initialRoute: "/",
      onGenerateRoute: onGenerateRouter,
    );
  }
}
