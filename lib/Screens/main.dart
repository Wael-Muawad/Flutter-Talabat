import 'package:flutter/material.dart';
import 'package:talabat/Screens/Cart.dart';
import 'package:talabat/Screens/Drawer.dart';
import 'package:talabat/Screens/Signup.dart';
import 'package:talabat/Screens/details.dart';
import 'package:talabat/Screens/home_page.dart';
import 'package:talabat/Screens/Login.dart';
import 'package:talabat/Screens/intro_page.dart';



void main() {
  return runApp(MaterialApp(
    title: 'Talabat',
    theme: ThemeData(
      primarySwatch: Colors.deepOrange,
      scaffoldBackgroundColor: Colors.white,
    ),
    initialRoute: 'intro',
    routes: {
      'intro':(context) => IntroPage(),
      'login':(context) => Login(),
      'signup':(context) => Signup(),
      'homepage':(context) => HomePage(),
      'drawer':(context) => DrawerPage(),
      'details': (context) => Details(),
      'cart': (context) => CartPage(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
