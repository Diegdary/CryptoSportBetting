import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Spacer(),
                  Container(
                      child: Row
                      (mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Balance: \$10.00',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        width:30,
                        height: 30,
                        child: Image.asset('assets/token.png'),
                      )
                    ],
                  )),
                  Spacer(),
                  Container(
                    height: 50.0,
                    width: 300.0,
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
                      child: Text("Depósito",
                          style: TextStyle(
                            fontSize: 23,
                            color: Color.fromARGB(255, 136, 247, 228),
                          )),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 50.0,
                    width: 300.0,
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
                      child: Text("Retiro",
                          style: TextStyle(
                            fontSize: 23,
                            color: Color.fromARGB(255, 136, 247, 228),
                          )),
                    ),
                  ),
                  Spacer(flex: 2),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
