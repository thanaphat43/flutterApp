import 'package:flutter/material.dart';
import './screens/launcher.dart';
import './page1/login3.dart';
import './page1/PageRoom.dart';
import './page1/component/about.dart';

void main() {
  runApp(MyApp());
}

// ส่วนของ Stateless widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => Launcher(),
        '/AllowRoom': (context) => PageRoom(),
        '/about': (context) => About(),
      },
    );
  }
}
