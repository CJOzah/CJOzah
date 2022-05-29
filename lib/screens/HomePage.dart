import 'package:canaan_portfolio/size_config.dart';
import 'package:canaan_portfolio/theme/change_theme_button_widget.dart';
import 'package:canaan_portfolio/theme/theme_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:line_icons/line_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.left
              : TextAlign.center;
      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.tablet
              ? 50
              : 80;
      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 16
              : 21;
      return Container(
        width: SizeConfig.sW! * 160,
        child: sizingInformation.isDesktop
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "WELCOME TO MY WORLD",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Hi, I'm",
                            style:
                                Theme.of(context).textTheme.headline3!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                            children: <TextSpan>[
                              TextSpan(
                                text: " Canaan Ozah\n",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3!
                                    .copyWith(
                                      color:
                                          Theme.of(context).primaryColorLight,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              TextSpan(
                                text: "a Professional Mobile/Web\n",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              TextSpan(
                                text: "Developer",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(
                                      color:
                                          Theme.of(context).primaryColorLight,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 100),
                          child: Text(
                            "I'm a Cross Platform Software Developer with over 3 years of experience. I'm proficient in UI/UX designs, user experience,researching, Mobile Development and Web Development.",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                        ChangeThemeButtonWidget(),
                        SizedBox(
                          height: sizingInformation.isTablet ? 50 : 80,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: SizeConfig.sW! * 6),
                          //Arrange the icons on columns for tablet and row for desktop
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "FIND ME",
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SocialButton(
                                        icon: FontAwesomeIcons.facebookF,
                                        function: () {},
                                      ),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      SocialButton(
                                        icon: LineIcons.instagram,
                                        function: () {},
                                      ),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      SocialButton(
                                        icon: LineIcons.linkedinIn,
                                        function: () {},
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "BEST SKILL ON",
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SkillsButton(
                                        text: "flutter_logo.png",
                                        function: () {},
                                      ),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      SkillsButton(
                                        text: "vs_code_logo.png",
                                        function: () {},
                                      ),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      SkillsButton(
                                        text: "wordpress_logo.png",
                                        function: () {},
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: ThemeProvider().isDarkMode
                                    ? [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 1,
                                          blurRadius: 10,
                                          offset: Offset(2,
                                              2), // changes position of shadow
                                        )
                                      ]
                                    : [],
                                gradient: !ThemeProvider().isDarkMode
                                    ? LinearGradient(
                                        colors: [
                                          Color(0xffEFF3F6),
                                          Colors.white,
                                          Colors.white,
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      )
                                    : LinearGradient(
                                        colors: [
                                          Color(0xff14181E),
                                          Color(0xff272B30),
                                          Color(0xff21252A),
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                              ),
                            ),
                            Container(
                              height: 430,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: !ThemeProvider().isDarkMode
                                        ? AssetImage(
                                            "images/header.gif",
                                          )
                                        : AssetImage("images/header.gif"),
                                  )),
                              child: Container(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Text(
                  //   'FLUTTER WEB.\nTHE BASICS',
                  //   style: TextStyle(
                  //     fontWeight: FontWeight.w800,
                  //     height: 0.9,
                  //     fontSize: titleSize,
                  //   ),
                  //   textAlign: textAlignment,
                  // ),
                  // SizedBox(
                  //   height: 30,
                  // ),
                  // Text(
                  //   'In this course we will go over the basics of using Flutter Web for website development. Topics will include Responsive Layout, Deploying, Font Changes, Hover Functionality, Modals and more.',
                  //   style: TextStyle(
                  //     fontSize: descriptionSize,
                  //     height: 1.7,
                  //   ),
                  //   textAlign: textAlignment,
                  // )
                ],
              ) // for tablet view
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: ThemeProvider().isDarkMode
                                      ? [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.3),
                                            spreadRadius: 1,
                                            blurRadius: 10,
                                            offset: Offset(2,
                                                2), // changes position of shadow
                                          )
                                        ]
                                      : [],
                                  gradient: !ThemeProvider().isDarkMode
                                      ? LinearGradient(
                                          colors: [
                                            Color(0xffEFF3F6),
                                            Colors.white,
                                            Colors.white,
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        )
                                      : LinearGradient(
                                          colors: [
                                            Color(0xff14181E),
                                            Color(0xff272B30),
                                            Color(0xff21252A),
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                ),
                              ),
                              Container(
                                height: SizeConfig.sW! * 65,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: !ThemeProvider().isDarkMode
                                          ? AssetImage("images/cj4.jpg")
                                          : AssetImage("images/cj3.png"),
                                    )),
                                child: Container(),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "WELCOME TO MY WORLD",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: "Hi, I'm",
                          style: sizingInformation.isDesktop
                              ? Theme.of(context).textTheme.headline3!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  )
                              : Theme.of(context).textTheme.headline4!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                          children: <TextSpan>[
                            TextSpan(
                              text: " Canaan Ozah",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                    color: Theme.of(context).primaryColorLight,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            TextSpan(
                                text: " a Professional Mobile/Web",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                    )),
                            TextSpan(
                              text: " Developer",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                    color: Theme.of(context).primaryColorLight,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 80, left: 80),
                        child: Text(
                          "I'm a Cross Platform Software Developer with over 3 years of experience. I'm proficient in UI/UX designs, user experience,researching, Mobile Development and Web Development.",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: SizeConfig.sW! * 6,
                            left: SizeConfig.sW! * 6),
                        //Arrange the icons on columns for tablet and row for desktop
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "FIND ME",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SocialButton(
                                      icon: FontAwesomeIcons.facebookF,
                                      function: () {},
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    SocialButton(
                                      icon: LineIcons.instagram,
                                      function: () {},
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    SocialButton(
                                      icon: LineIcons.linkedinIn,
                                      function: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "BEST SKILL ON",
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SkillsButton(
                                      text: "flutter_logo.png",
                                      function: () {},
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    SkillsButton(
                                      text: "vs_code_logo.png",
                                      function: () {},
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    SkillsButton(
                                      text: "wordpress_logo.png",
                                      function: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
      );
    });
  }
}

class SocialButton extends StatelessWidget {
  final IconData? icon;
  final Function()? function;
  const SocialButton({
    Key? key,
    this.icon,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: SizeConfig.sW! * 2),
      height: 40.0,
      width: 40.0,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(2, 2), // changes position of shadow
          ),
        ],
      ),
      child: InkWell(onTap: function, child: Icon(icon)),
    );
  }
}

class SkillsButton extends StatelessWidget {
  final String? text;
  final Function()? function;
  const SkillsButton({
    Key? key,
    this.text,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(top: SizeConfig.sW! * 2),
      height: 40.0,
      width: 40.0,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(2, 2), // changes position of shadow
          ),
        ],
      ),
      child: InkWell(onTap: function, child: Image.asset("images/$text")),
    );
  }
}
