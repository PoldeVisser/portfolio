import 'package:flutter/material.dart';
import 'package:web_portfolio/layouts/medium_screen_layout.dart';
import 'package:web_portfolio/layouts/small_screen_layout.dart';
// import 'package:web_portfolio/widgets/appbars/top_bar_mobile.dart';
import 'package:web_portfolio/widgets/drawers/app_drawer.dart';
import 'package:web_portfolio/widgets/responsive_widget.dart';

import 'large_screen_layout.dart';

class Layout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      // appBar: topNavigationBar(context, scaffoldKey),
      drawer: AppDrawer(),
      body: ResponsiveWidget(
        largeScreen: LargeScreenLayout(),
        mediumScreen: MediumScreenLayout(),
        smallScreen: SmallScreenLayout(),
      ),
    );
  }
}
