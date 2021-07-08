import 'package:flutter/material.dart';
import 'package:web_portfolio/widgets/appbars/top_bar_title.dart';

List<Tab> tabs = [
  Tab(
    child: TopBarTitle(
      title: 'About',
    ),
  ),
  Tab(
    child: TopBarTitle(
      title: 'Experience',
    ),
  ),
  Tab(
    child: TopBarTitle(
      title: 'Project',
    ),
  ),
  Tab(
    child: TopBarTitle(
      title: 'Contact Me',
    ),
  ),
];
