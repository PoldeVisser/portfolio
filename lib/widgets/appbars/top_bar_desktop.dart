import 'package:flutter/material.dart';
import 'package:web_portfolio/constants/tabs.dart';

class TopBarDesktop extends StatelessWidget {
    static double topBarHeight = 80.0;

  const TopBarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // TODO make scrolling in sliverappbar smooth on web
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: Text(
        'Portfolio website',
        style: Theme.of(context).textTheme.headline6,
      ),
      leading: Icon(
        Icons.change_history,
        size: 32,
        color: Theme.of(context).accentColor,
      ),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text("tab 1", style: Theme.of(context).textTheme.headline6),
        ),
        TextButton(
          onPressed: () {},
          child: Text("tab 2", style: Theme.of(context).textTheme.headline6),
        ),
        TextButton(
          onPressed: () {},
          child: Text("tab 3", style: Theme.of(context).textTheme.headline6),
        ),
        TextButton(
          onPressed: () {},
          child: Text("tab 4", style: Theme.of(context).textTheme.headline6),
        ),
      ],
    );
  }
}
