import 'package:flutter/material.dart';
import './screen/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Colors.red,
      ),
      initialRoute: "/",
      routes: {
        '/': (context) => Home()
      },
    );
  }
}

