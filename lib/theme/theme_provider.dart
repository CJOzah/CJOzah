import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xff21252A),
    backgroundColor: Color(0xff21252A),
    primaryColor: Color(0xFF000C66),
    primaryColorDark: Color(0xFF050A30),
    primaryColorLight: Color(0xFFF16252),
    secondaryHeaderColor: Color(0xFFF0A904),
    accentColor: Color(0xFF48BCE1),
    dividerColor: Colors.grey,
    textTheme: TextTheme().copyWith(
      bodyText1: TextStyle(
        color: Colors.white,
        height: 1.5,
        fontSize: 16.0,
      ),
      bodyText2: TextStyle(
        color: Colors.white,
      ),
      headline4: TextStyle(
        color: Colors.white,
      ),
      headline5: TextStyle(
        color: Colors.white,
      ),
      headline6: TextStyle(
        color: Colors.white,
      ),
      headline3: TextStyle(
        color: Colors.white,
      ),
    ),
    buttonTheme: ButtonThemeData().copyWith(
      buttonColor: Color(0xFF121212),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          Color(0xFFF16252),
        ),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.only(left: 45.0, right: 45.0, top: 20.0, bottom: 20.0),
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(fontSize: 15.0, color: Colors.white),
        ),
        elevation: MaterialStateProperty.all<double>(15.0),
        shadowColor: MaterialStateProperty.all<Color>(
          Color(0xFFF16252),
        ),
      ),
    ),
    colorScheme: ColorScheme.dark(),
    accentIconTheme: IconThemeData(color: Colors.white, opacity: 0.8, size: 24),
    iconTheme: IconThemeData(color: Colors.white, opacity: 0.8, size: 24),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xffEDF1F4),
    backgroundColor: Color(0xFFffffff),
    primaryColor: Color(0xFF000C66),
    primaryColorDark: Color(0xFF050A30),
    primaryColorLight: Color(0xFF0000FF),
    secondaryHeaderColor: Color(0xFFF0A904),
    accentColor: Color(0xFF48BCE1),
    dividerColor: Color(0xFFFFFFFF),
    textTheme: TextTheme().copyWith(
      bodyText1: TextStyle(color: Colors.black, 
        fontSize: 16.0, height: 1.5),
      bodyText2: TextStyle(
        color: Colors.black,
        
      ),
      headline4: TextStyle(
        color: Colors.black,
      ),
      headline5: TextStyle(
        color: Colors.black,
      ),
      headline6: TextStyle(
        color: Colors.black,
      ),
      headline3: TextStyle(
        color: Colors.black,
      ),
    ),
    buttonTheme: ButtonThemeData().copyWith(
      buttonColor: Color(0xFF121212),
      hoverColor: Color(0xFF121212),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          Color(0xFF0000FF),
        ),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.only(left: 45.0, right: 45.0, top: 20.0, bottom: 20.0),
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(
            fontSize: 15.0,
            color: Colors.white,
          ),
        ),
        elevation: MaterialStateProperty.all<double>(15.0),
        shadowColor: MaterialStateProperty.all<Color>(Color(0xFF0000FF)),
      ),
    ),
    colorScheme: ColorScheme.light(),
    accentIconTheme: IconThemeData(color: Colors.black, opacity: 0.8, size: 24),
    iconTheme: IconThemeData(color: Colors.black, opacity: 0.8, size: 24),
  );
}
