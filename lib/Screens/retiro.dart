import 'package:flutter/material.dart';

class Retiro extends StatefulWidget {
  const Retiro({super.key});

  @override
  _RetiroState createState() => _RetiroState();
}

class _RetiroState extends State<Retiro> {
  String _monedaSeleccionada = 'Bitcoin';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(36),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                "Depositar",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Seleccionar moneda",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 135, 251, 242)),
                  ),
                  Container(
                    width: screenWidth * 0.8, // 80% del ancho de la pantalla
                    height: screenHeight * 0.08, // 10% del alto de la pantalla
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Color(0xFFBAF4FF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: _monedaSeleccionada,
                        icon: Icon(Icons.arrow_downward,
                            color: Color.fromARGB(255, 16, 27, 66)),
                        style: TextStyle(
                            color: Color.fromARGB(255, 16, 27, 66),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        dropdownColor: Color(0xFFBAF4FF),
                        onChanged: (String? newValue) {
                          setState(() {
                            _monedaSeleccionada = newValue!;
                          });
                        },
                        menuMaxHeight: screenHeight * 0.3,
                        items: <String>['Bitcoin', 'Shiba Inu', 'Shibarium']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Cantidad Crypto",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 135, 251, 242)),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    keyboardType: TextInputType.number,
                    
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      color: Color.fromARGB(
                          255, 16, 27, 66), // Color del texto en azul oscuro
                    ),
                   
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFBAF4FF),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Recibiras",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 135, 251, 242)),
                  ),
                  SizedBox(height: 8),
                  Row(
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
                      Image.asset("assets/token.png", height: 30, width: 30),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Seleccionar red",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 135, 251, 242)),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 135, 251, 242),
                        labelText: 'Red cripto',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Dirección de Deposito",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 135, 251, 242)),
                  ),
                  SizedBox(height: 8),
                  Image.asset('assets/qr.jpg', height: 60, width: 60),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Comprobar transaccion",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(255, 16, 27, 66),
                        )),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 135, 251, 242),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Salir",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color.fromARGB(255, 16, 27, 66),
                        )),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 135, 251, 242),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
