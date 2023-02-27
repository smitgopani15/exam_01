import 'package:exam_01/tablePage.dart';
import 'package:flutter/material.dart';
import 'homePage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        'table': (context) => TablePage(),
      },
    ),
  );
}
