import 'package:canaan_portfolio/content/home_content_desktop.dart';
import 'package:canaan_portfolio/content/home_content_mobile.dart';
import 'package:canaan_portfolio/nav_drawer/nav_drawer.dart';
import 'package:canaan_portfolio/navbar/navBar.dart';
import 'package:canaan_portfolio/navbar/nav_bar_item.dart';
import 'package:canaan_portfolio/navbar/nav_bar_logo.dart';
import 'package:canaan_portfolio/screens/HomePage.dart';
import 'package:canaan_portfolio/screens/about_screen.dart';
import 'package:canaan_portfolio/screens/portfolio_screen.dart';
import 'package:canaan_portfolio/screens/services_desktop_tablet.dart';
import 'package:canaan_portfolio/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../github_api.dart';
import 'contact.dart';

class Home extends StatefulWidget {
  static String id = 'Home';
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final dataKey = new GlobalKey();
  final dataKey1 = new GlobalKey();
  final dataKey2 = new GlobalKey();
  final dataKey3 = new GlobalKey();
  final dataKey4 = new GlobalKey();

  ScrollController? controller;

  @override
  void initState() {
    Provider.of<GithubRepos>(context, listen: false).getGithubRepos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        appBar: AppBar(
          toolbarHeight: 80,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Container(
              margin: EdgeInsets.only(
                top: SizeConfig.sW! * 1,
                bottom: SizeConfig.sW! * 1,
                left: sizingInformation.isTablet
                    ? SizeConfig.sW! * 3
                    : SizeConfig.sW! * 7,
                right: sizingInformation.isTablet
                    ? SizeConfig.sW! * 3
                    : SizeConfig.sW! * 7,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  NavBarLogo(),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      NavBarItem(
                        text: "Home",
                        function: () => Scrollable.ensureVisible(
                            dataKey.currentContext!,
                            duration: Duration(seconds: 2),
                            curve: Curves.easeIn),
                      ),
                      SizedBox(
                        width: SizeConfig.sW! * 2,
                      ),
                      NavBarItem(
                        text: "About",
                        function: () => Scrollable.ensureVisible(
                            dataKey1.currentContext!,
                            duration: Duration(seconds: 2),
                            curve: Curves.easeIn),
                      ),
                      SizedBox(
                        width: SizeConfig.sW! * 2,
                      ),
                      NavBarItem(
                        text: "Services",
                        function: () => Scrollable.ensureVisible(
                            dataKey2.currentContext!,
                            duration: Duration(seconds: 2),
                            curve: Curves.easeIn),
                      ),
                      SizedBox(
                        width: SizeConfig.sW! * 2,
                      ),
                      NavBarItem(
                        text: "Portfolio",
                        function: () => Scrollable.ensureVisible(
                            dataKey3.currentContext!,
                            duration: Duration(seconds: 2),
                            curve: Curves.easeIn),
                      ),
                      SizedBox(
                        width: SizeConfig.sW! * 2,
                      ),
                      NavBarItem(
                        text: "Contact",
                        function: () => Scrollable.ensureVisible(
                            dataKey4.currentContext!,
                            duration: Duration(seconds: 2),
                            curve: Curves.easeIn),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Hire Me",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              )),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(
                      "images/darkBG2.gif",
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
                margin: EdgeInsets.only(
                  top: SizeConfig.sW! * 1,
                  bottom: SizeConfig.sW! * 1,
                  left: sizingInformation.isTablet
                      ? SizeConfig.sW! * 4
                      : SizeConfig.sW! * 8,
                  right: sizingInformation.isTablet
                      ? SizeConfig.sW! * 4
                      : SizeConfig.sW! * 8,
                ),
                child: Wrap(
                  children: [
                    ScreenTypeLayout(
                      mobile: HomeContentMobile(),
                      tablet: Column(
                        children: [
                          HomePage(key: dataKey),
                          AboutScreen(
                            key: dataKey1,
                          ),
                          ServicesPageDesktopTab(
                            key: dataKey2,
                          ),
                          PortfolioScreen(
                            key: dataKey3,
                          ),
                          ContactScreen(
                            key: dataKey4,
                          ),
                        ],
                      ),
                      desktop: Column(
                        children: [
                          HomePage(
                            key: dataKey,
                          ),
                          AboutScreen(
                            key: dataKey1,
                          ),
                          ServicesPageDesktopTab(
                            key: dataKey2,
                          ),
                          PortfolioScreen(
                            key: dataKey3,
                          ),
                          ContactScreen(
                            key: dataKey4,
                          ),
                        ],
                      ),
                    ),

                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Text(
                    //       "Canaan",
                    //       style: Theme.of(context).textTheme.headline5,
                    //     ),
                    //     Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //       children: [

                    //   ],
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
