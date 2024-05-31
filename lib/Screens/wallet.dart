import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'retiro.dart';
import 'retiroreal.dart';

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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Balance: \$10.00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'assets/token.png',
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.08,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    height: MediaQuery.of(context).size.height* 0.1,
                    width: MediaQuery.of(context).size.width * 0.7, // 10% del ancho de la pantalla
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: ElevatedButton(
                      onPressed: () => showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        enableDrag: true,
                        backgroundColor: Color.fromARGB(255, 44, 58, 106),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        builder: (context) => retiro(),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 1, 29, 101),
                      ),
                      child: Text(
                        "Depósitar",
                        style: TextStyle(
                          fontSize: 23,
                          color: Color.fromARGB(255, 135, 251, 242),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: MediaQuery.of(context).size.height* 0.1,
                    width: MediaQuery.of(context).size.width * 0.7, // 10% del ancho de la pantalla
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: ElevatedButton(
                      onPressed: () => showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        enableDrag: true,
                        backgroundColor: Color.fromARGB(255, 44, 58, 106),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        builder: (context) => retiroreal(),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 1, 29, 101),
                      ),
                      child: Text(
                        "Retirar",
                        style: TextStyle(
                          fontSize: 23,
                          color: Color.fromARGB(255, 135, 251, 242),
                        ),
                      ),
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
