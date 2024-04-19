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
                          fillColor: Color.fromARGB(255, 135, 251, 242),
                          labelText: 'Moneda Cripto',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
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
                  Container(
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 135, 251, 242),
                          labelText: 'Cantidad Cripto',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  Container(
                      child: Text(
                    "Recibiras",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 135, 251, 242)),
                  )),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 30,
                          width: 200,
                          child: Text(
                            "153,349.91",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color.fromARGB(255, 1, 29, 101)),
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 135, 251, 242),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          child: Image.asset("assets/token.png"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            
            Container(
                child: Text(
              "Seleccionar red",
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
                          fillColor: Color.fromARGB(255, 135, 251, 242),
                          labelText: 'Red cripto',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  Container(
                child: Text(
              "Dirección de reposito",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 135, 251, 242)),
            )),
            Container(
              height: 20,
            ),
            Container(
              height: 150,
              width: 150,
              child: Image.asset('assets/qr.jpg'),
            ),
            Container(
              height: 20,
            ),
            Container(
            width: 350,
            height: 40,

            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Comprobar transaccion",style: (
                TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 16, 27, 66),
                )
              ),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 135, 251, 242), // Color de fondo del botón
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Bordes redondeados
                ),
              ),
            ),
          ),
          Container(
              height: 20,
            ),
          Container(
            width: 90,

            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Salir",style: (
                TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color.fromARGB(255, 16, 27, 66),
                )
              ),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 135, 251, 242), // Color de fondo del botón
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Bordes redondeados
                ),
              ),
            ),
          )
          ],
        ),
      ),
    );
  }
}
