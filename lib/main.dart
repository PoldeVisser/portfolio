import 'package:flutter/material.dart';
import 'package:web_portfolio/layouts/layout_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xff64FFDA),
        textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: 14,
            letterSpacing: 3,
            color: Color(0xffBAD0D0),
          ),
        ),
      ),
      home: Layout(),
    );
  }
}
