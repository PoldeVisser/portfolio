import 'package:flutter/material.dart';
import 'package:web_portfolio/constants/style.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        accentColor: blue1,
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: 14,
            letterSpacing: 3,
            color: light,
          ),
        ),
      ),
      
      home: Layout(),
    );
  }
}
