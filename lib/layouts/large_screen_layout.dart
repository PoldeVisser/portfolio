import 'package:flutter/material.dart';
import 'package:web_portfolio/constants/style.dart';
import 'package:web_portfolio/constants/tabs.dart';
import 'package:web_portfolio/widgets/appbars/top_bar_desktop.dart';

class LargeScreenLayout extends StatelessWidget {
  const LargeScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _screenSize = MediaQuery.of(context).size;
    final double _containerHeightPercentage = 0.6;
    final double _containerHeight =
        _screenSize.height * _containerHeightPercentage;
    final double _containerWidthPercentage = 0.8;
    final double _containerWidth =
        _screenSize.width * _containerWidthPercentage;

    return Column(
      children: [
        

        // TODO implement slivers
        Expanded(
          child: CustomScrollView(
            slivers: [
              TopBarDesktop(screenSize: _screenSize),
              // SliverAppBar(
              //   backgroundColor: Colors.black,
              //   title: Text(
              //     'Portfolio website',
              //     style: Theme.of(context).textTheme.headline6,
              //   ),
              //   floating: true,
              //   leading: Icon(
              //     Icons.change_history,
              //     size: 32,
              //     color: Theme.of(context).accentColor,
              //   ),
              //   actions: [
              //     TextButton(
              //       onPressed: () {},
              //       child: Text("tab 1",
              //           style: Theme.of(context).textTheme.headline6),
              //     ),
              //     TextButton(
              //       onPressed: () {},
              //       child: Text("tab 2",
              //           style: Theme.of(context).textTheme.headline6),
              //     ),
              //     TextButton(
              //       onPressed: () {},
              //       child: Text("tab 3",
              //           style: Theme.of(context).textTheme.headline6),
              //     ),
              //     TextButton(
              //       onPressed: () {},
              //       child: Text("tab 4",
              //           style: Theme.of(context).textTheme.headline6),
              //     ),
              //   ],
              // ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    // Return whatever you want here
                    return Container(
                      margin: EdgeInsets.symmetric(
                          vertical: _screenSize.height *
                              (1 - _containerHeightPercentage) /
                              4,
                          horizontal: _screenSize.width *
                              (1 - _containerWidthPercentage) /
                              2),
                      color: Colors.teal[100 * (index % 9 + 1)],
                      height: _containerHeight,
                      width: _containerWidthPercentage,
                      alignment: Alignment.center,
                      child: Text(
                        "Item $index",
                        style: TextStyle(fontSize: 30),
                      ),
                    );
                  },
                  childCount: 300,
                ),
              ),
            ],
          ),
        )

        // Expanded(
        //   child: Center(
        //     child: Container(
        //       height: _screenSize.height * 0.4,
        //       width: _screenSize.width * 0.4,
        //       // color: Theme.of(context).accentColor,
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //         children: [
        //           Container(height: 100, width: 100, color: blue2),
        //           Align(
        //             alignment: Alignment.bottomCenter,
        //             child: Container(
        //               height: 30,
        //               width: 30,
        //               color: blue3,
        //             ),
        //           ),
        //           Container(
        //             height: 100,
        //             width: 100,
        //             color: blue4,
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
