import 'package:flutter/material.dart';

class retiro extends StatelessWidget {
  const retiro({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "Retiro",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      child: Text(
                    "Seleccionar moneda",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 135, 251, 242)),
                  )),
                  Container(
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor:  Color.fromARGB(255, 135, 251, 242),
                        labelText: 'Moneda Cripto',
                      ),
                    ),
                    
                  ),
                  Container(
                      child: Text(
                    "Cantidad Crypto",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 135, 251, 242)),
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
