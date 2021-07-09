import 'package:flutter/material.dart';
import 'package:web_portfolio/constants/style.dart';
import 'package:web_portfolio/constants/tabs.dart';
import 'package:web_portfolio/widgets/appbars/top_bar_desktop.dart';

class LargeScreenLayout extends StatelessWidget {
  const LargeScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        TopBarDesktop(screenSize: _screenSize),
        Expanded(
          child: Center(
            child: Container(
              height: _screenSize.height * 0.4,
              width: _screenSize.width * 0.4,
              // color: Theme.of(context).accentColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(height: 100, width: 100, color: blue2),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 30,
                      width: 30,
                      color: blue3,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: blue4,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
