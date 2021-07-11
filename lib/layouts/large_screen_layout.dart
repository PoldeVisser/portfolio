import 'package:flutter/material.dart';
import 'package:web_portfolio/constants/style.dart';
import 'package:web_portfolio/constants/tabs.dart';
import 'package:web_portfolio/widgets/appbars/top_bar_desktop.dart';

class LargeScreenLayout extends StatelessWidget {
  const LargeScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Size _screenSize = MediaQuery.of(context).size;

    // TODO make sections and feed it to customscroller

    return Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                TopBarDesktop(),
                SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.teal[100 * (index % 9 + 1)],
                      child: Text('grid item $index'),
                    );
                  }, childCount: 200),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      mainAxisExtent:
                          _screenSize.height - TopBarDesktop.topBarHeight),
                ),
              ],
            ),
          )
        ],
      );
  }
}
