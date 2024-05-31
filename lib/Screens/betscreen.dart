

import 'package:flutter/material.dart';

class bestscreen extends StatelessWidget {
  const bestscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenidos a Apostar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('¡Bienvenidos a apostar!'),
            SizedBox(height: 20), // Espacio entre el texto y el botón
            ElevatedButton(
              onPressed: () {
                // Aquí puedes añadir la funcionalidad del botón en el futuro
              },
              child: Text('Apostar'),
            ),
          ],
        ),
      ),
    );
  }
}