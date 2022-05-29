import 'package:canaan_portfolio/call_to_action/call_to_action.dart';
import 'package:canaan_portfolio/screens/HomePage.dart';
import 'package:canaan_portfolio/screens/about_screen.dart';
import 'package:canaan_portfolio/screens/services_desktop_tablet.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomeContentDesktop extends StatefulWidget {
  @override
  _HomeContentDesktopState createState() => _HomeContentDesktopState();
}

class _HomeContentDesktopState extends State<HomeContentDesktop> {
  List<Widget> myWidgets = [
    HomePage(),
    AboutScreen(),
  ];

  final ItemScrollController? _itemScrollController = ItemScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomePage(),
        AboutScreen(),
      ],
    );
  }
}
