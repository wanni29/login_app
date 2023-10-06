import 'package:flutter/material.dart';
import 'package:login_app/pages/login_page.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: buildThemeData(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/login", // 첫페이지가 홈페이지
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
      },
    );
  }

  ThemeData buildThemeData() {
    // appBarTheme, IconTheme, TextButtonThemeData -> 테마로 설정을 하면 어디에서 쓰든지 테마로 적용이 되는구나.
    return ThemeData(
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          minimumSize: Size(double.infinity, 60),
        ),
      ),
    );
  }
}
