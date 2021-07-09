import 'package:flutter/material.dart';
import 'package:web_portfolio/constants/tabs.dart';

class TopBarDesktop extends StatelessWidget {
  final Size screenSize;

  const TopBarDesktop({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO make scrolling in sliverappbar smooth on web
    return SliverAppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: Text(
        'Portfolio website',
        style: Theme.of(context).textTheme.headline6,
      ),
      floating: true,
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
