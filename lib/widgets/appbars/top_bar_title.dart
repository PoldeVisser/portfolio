import 'package:flutter/material.dart';

class TopBarTitle extends StatelessWidget {
  final String title;

  const TopBarTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Text(
          title,
          textAlign: TextAlign.center,
          // TODO integrate in themedata
          style: Theme.of(context).textTheme.headline6,
        ),
      ),

    );
  }
}
