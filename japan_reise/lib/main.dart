import 'package:flutter/material.dart';
// import the StartPage
import 'package:japan_reise/pages/start_page.dart';
import 'package:japan_reise/pages/menu_page.dart';

void main() {
  // run the app(the app to run)
  runApp(const MyApp());
}

// define MyApp(), extend StatelessWidget class
class MyApp extends StatelessWidget {
  // constructor of MyApp class
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // show element on the screen
    return MaterialApp(
      // remove the banner
      debugShowCheckedModeBanner: false,
      // home page = StartPage()
      home: StartPage(),
      // Navigation
      routes: {
        '/startpage':(context) => StartPage(),
        '/menupage':(context) => MenuPage()
      },
    );
  }
}
