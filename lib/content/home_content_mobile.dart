import 'package:canaan_portfolio/call_to_action/call_to_action.dart';
import 'package:flutter/material.dart';

import '../screens/HomePage.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          HomePage(),
        ],
      ),
    );
  }
}
