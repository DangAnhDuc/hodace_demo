import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hodace_app/screens/bottom_nav_screen.dart';
import 'package:hodace_app/theme/theme.dart';

class App extends StatefulWidget{
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (ctx) => BottomNavScreen(),
      },
    );
  }

}