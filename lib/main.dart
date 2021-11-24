import 'package:flutter/material.dart';
import 'package:kurs2_sabak5/course_materials/course_materials_view.dart';
import 'package:kurs2_sabak5/views/xylophone_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      home: XylophoneView(),
    );
  }
}
