import 'package:flutter/material.dart';

class bestscreen extends StatelessWidget {
  const bestscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.5), // Gris con opacidad del 50%
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Hola, bienvenido a bestscreen',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Este botón no hará nada cuando se presione.
              },
              child: Text('Apostar'),
            ),
          ],
        ),
      ),
    );
  }
}