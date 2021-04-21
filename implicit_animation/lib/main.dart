import 'package:flutter/material.dart';
import 'package:implicit_animation/basic_implicit_animation.dart';
import 'package:implicit_animation/custom_implicit_animation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: BasicImplicitAnimation(),
      home: CustomImplicitAnimation(),
    );
  }
}
