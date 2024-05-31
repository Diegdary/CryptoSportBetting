import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Retiro extends StatefulWidget {
  const Retiro({super.key});

  @override
  _RetiroState createState() => _RetiroState();
}

class _RetiroState extends State<Retiro> {
  String _monedaSeleccionada = 'Bitcoin';
  String _redSeleccionada = 'BNB smart chain (BEP20)';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(36),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Center( 
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
                        fontSize: 16,
                        color: Color.fromARGB(255, 135, 251, 242)),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.05,
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
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                        dropdownColor: Color(0xFFBAF4FF),
                        onChanged: (String? newValue) {
                          setState(() {
                            _monedaSeleccionada = newValue!;
                          });
                        },
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
                  SizedBox(height: 2),
                  Text(
                    "Cantidad Crypto",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color.fromARGB(255, 135, 251, 242)),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                      color: Color(0xFFBAF4FF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color.fromARGB(255, 16, 27, 66),
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Recibiras",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color.fromARGB(255, 135, 251, 242)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          color: Color(0xFFBAF4FF), // Color de fondo azul claro
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "153,349.91",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color.fromARGB(255, 16, 27, 66),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.14,
                        height: MediaQuery.of(context).size.height * 0.08,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset('assets/token.png'),
                      ),
                    ],
                  ),
                  Text(
                    "Seleccionar red",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color.fromARGB(255, 135, 251, 242)),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.05,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Color(0xFFBAF4FF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: _redSeleccionada,
                        icon: Icon(Icons.arrow_downward,
                            color: Color.fromARGB(255, 16, 27, 66)),
                        style: TextStyle(
                            color: Color.fromARGB(255, 16, 27, 66),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                        dropdownColor: Color(0xFFBAF4FF),
                        onChanged: (String? newValue) {
                          setState(() {
                            _redSeleccionada = newValue!;
                          });
                        },
                        items: <String>[
                          'BNB smart chain (BEP20)',
                          'BNB smart chain (BEP2)',
                          'BNB smart chain (BEP0)'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dirección de Deposito",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color.fromARGB(255, 135, 251, 242)),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Image.asset(
                            'assets/qr.jpg',
                            width: 150,
                            height: 150,
                          ),
                          SizedBox(width: 8),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Text(
                              "https://fonts.google.com/",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 135, 251, 242)),
                              softWrap: true,
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Comprobar transacción",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color.fromARGB(255, 16, 27, 66),
                            ),
                          ),
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
                          child: Text(
                            "Salir",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color.fromARGB(255, 16, 27, 66),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 135, 251, 242),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
