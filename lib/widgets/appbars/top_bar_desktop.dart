import 'package:flutter/material.dart';
import 'package:web_portfolio/constants/tabs.dart';

class TopBarDesktop extends StatelessWidget {
  final Size screenSize;

  const TopBarDesktop({ Key? key, required this.screenSize }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            height: screenSize.height * 0.14,
            width: screenSize.width,
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
                      color: Theme.of(context).accentColor,
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
                          indicatorColor: Theme.of(context).accentColor,
                          indicatorSize: TabBarIndicatorSize.label,
                          onTap: null,
                          tabs: tabs,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}