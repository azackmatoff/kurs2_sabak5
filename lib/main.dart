import 'package:flutter/material.dart';
import 'package:kurs2_sabak5/home_view.dart';
import 'package:kurs2_sabak5/test_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: TestView(),
    );
  }
}
