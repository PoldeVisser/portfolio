import 'package:flutter/material.dart';
import 'package:web_portfolio/constants/tabs.dart';

class LargeScreenLayout extends StatelessWidget {
  const LargeScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      primary: true,
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            height: _screenSize.height * 0.14,
            width: _screenSize.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    // Center icon in iconbutton
                    padding: const EdgeInsets.only(),
                    icon: Icon(
                      Icons.change_history,
                      size: 32,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      child: DefaultTabController(
                        length: tabs.length,
                        child: TabBar(
                          indicatorColor: Colors.transparent,
                          onTap: null,
                          tabs: tabs,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
