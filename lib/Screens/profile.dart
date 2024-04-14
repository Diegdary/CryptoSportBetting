import 'package:flutter/material.dart';

class ProfScreen extends StatelessWidget {
  const ProfScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('perfil'),
      ),
      body: Center(
        child: Text('este es el perfil'),
      ),
    );
  }
}