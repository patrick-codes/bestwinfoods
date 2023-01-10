import 'package:bestwinfoods/Login_Screen/loginscreen.dart';
//import 'package:bestwinfoods/home/home_page.dart';
//import 'package:bestwinfoods/splashscreen.dart';
import 'package:flutter/material.dart';
//import 'Login_Screen/login2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Lato',
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}
