import 'package:flutter/material.dart';

import '../responsive_widget.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    // TODO replace with sliverAppBar
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(children: [
            Container(
              padding: EdgeInsets.only(left: 14),
              // Replace with app icon
              child: Icon(Icons.menu_book, color: Colors.black87,),
            )
          ],)
          : IconButton(
              onPressed: () {
                key.currentState!.openDrawer();
              },
              icon: Icon(Icons.menu, color: Colors.black87),
            ),
      
      elevation: 0,
      backgroundColor: Colors.white,
      actions: [

      ],
    );