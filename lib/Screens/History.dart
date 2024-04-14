import 'package:flutter/material.dart';

class Histo extends StatelessWidget {
  const Histo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial'),
      ),
      body: Center(
        child: Text('Esta es la pagina de historial'),
      ),
    );
  }
}
