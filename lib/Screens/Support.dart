import 'package:flutter/material.dart';

class Suport extends StatelessWidget {
  const Suport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('soporte'),
      ),
      body: Center(
        child: Text('Esta es la pagina de soporte'),
      ),
    );
  }
}
