import 'package:flutter/material.dart';

class MediumScreenLayout extends StatelessWidget {
  const MediumScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Expanded(
            child: Container(
              //TODO replace with sidenav
              color: Colors.purple,
            ),
          ),
        ],
      );
  }
}
