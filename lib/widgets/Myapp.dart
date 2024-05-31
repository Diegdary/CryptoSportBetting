import 'package:apuestas/Screens/Home.dart';
import 'package:apuestas/Screens/Register.dart';
import 'package:flutter/material.dart';
import '../Screens/Login.dart';
import '../Screens/Home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      initialRoute: Login.routName,
      routes: {
        Login.routName: (context) => const Login(title: "titulo"),
        Home.routname: (context) => const Home(),
        Register.routName: (context) => const Register(),
      },
      home: Login(
        title: "titulo",
      ),
    );
  }
}
