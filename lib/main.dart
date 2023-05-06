import 'package:flutter/material.dart';
import 'package:todo_cycle8_sat/home_layout/home_layout.dart';
import 'package:todo_cycle8_sat/pages/splash_page/splage_page.dart';
import 'package:todo_cycle8_sat/shared_components/theme/my_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      themeMode: ThemeMode.light,
      initialRoute: SplashPage.routeName,
      routes: {
        SplashPage.routeName: (context) => SplashPage(),
        HomeLayout.routeName: (context) => HomeLayout(),
      },
    );
  }
}
