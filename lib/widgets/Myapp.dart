import 'package:apuestas/Screens/Home.dart';
import 'package:flutter/material.dart';
import '../Screens/Login.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      home: Login(
        title: "titulo",
      ),
    );
  }
}
