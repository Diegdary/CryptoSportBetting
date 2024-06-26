import 'package:flutter/material.dart';

class Wall extends StatelessWidget {
  const Wall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color.fromARGB(255, 44, 58, 106),
        Color.fromARGB(255, 12, 13, 52),
      ],
    );

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: appGradient,
          ),
          child: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Billetera',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 150),
                  Container(
                    height: 70.0,
                    width: 400.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: Agregar funcionalidad de depósito
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 1, 29, 101),
                      ),
                      child: Text("Depósito", style: TextStyle(fontSize: 23)),
                    ),
                  ),
                  SizedBox(height: 10), // Espacio entre botones

                  Container(
                    height: 70.0,
                    width: 400.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: Agregar funcionalidad de retiro
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 1, 29, 101),
                      ),
                      child: Text("Retiro", style: TextStyle(fontSize: 23)),
                    ),
                  ),
                  // ... Otros widgets ...
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
