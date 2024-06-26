import 'package:apuestas/Screens/Home.dart';
import 'package:flutter/material.dart';
import 'package:apuestas/Screens/Login.dart';
import 'package:apuestas/Screens/Home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      initialRoute: Login.routName,
      routes: {
        Login.routName: (context) => Login(title: "titulo"),
        Home.routname: (context) => const Home(),
      },
      home: Login(
        title: "titulo",
      ),
    );
  }
}
