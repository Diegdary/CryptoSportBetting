import 'package:flutter/material.dart';

class retiroreal extends StatelessWidget {
  const retiroreal({super.key});

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
                "Retirar",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
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
                    height: 35,
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
                    "Cantidad a retirar",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 135, 251, 242)),
                  )),
                  Container(
                    height: 35,
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
                          height: 30,
                          width: 30,
                          child:  Text("BTC",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color.fromARGB(255, 135, 251, 242),
                            ),
                          ),
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
              height: 35,
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
              "Dirección de retiro",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 135, 251, 242)),
            )),
            Container(
              height: 35,
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 135, 251, 242),
                          labelText: 'Direccion retiro',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
            
            Container(
              height: 10,
            ),
            Container(
            width: 350,
            height: 40,

            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Retirar",style: (
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
