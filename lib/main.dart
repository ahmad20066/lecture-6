// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lecture6/screens/form.dart';
import 'package:lecture6/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            textTheme: TextTheme(
                headline1: TextStyle(
              fontFamily: 'BhuTukaExpandedOne',
              fontWeight: FontWeight.normal,
              fontSize: 50,
              color: Colors.red,
            )),
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
                .copyWith(secondary: Colors.redAccent)),
        home: HomeScreen());
  }
}
