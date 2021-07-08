import 'package:flutter/material.dart';

class SmallScreenLayout extends StatelessWidget {
  const SmallScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      color: Colors.green,
    );
  }
}
