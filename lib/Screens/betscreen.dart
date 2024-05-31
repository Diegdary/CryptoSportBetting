import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BestScreen extends StatefulWidget {
  @override
  _BestScreenState createState() => _BestScreenState();
}

class _BestScreenState extends State<BestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Apostar'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.8,
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    'assets/baltimore.png',
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    // Usa Expanded para llenar el espacio restante en la fila
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment
                          .start, // Alinea los textos a la izquierda
                      children: <Widget>[
                        Row(
                          // Primera fila con "GANA" y "1.23"
                          children: <Widget>[
                            Text(
                              'GANA ',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '1.23',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          // Segunda fila con el nombre de los equipos
                          'Baltimore VS Atlanta Bravers',
                          style: TextStyle(
                            fontSize: 8,
                          ),
                        ),
                      ],
                    ),
                  ),

                Container(
        margin: EdgeInsets.only(left: 8.0, right: 8.0), // Margen solo a los lados
        child: Image.asset('assets/x.png',
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.08,
        ),
      ),
    ],
  ),
),
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.8,
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    'assets/baseball-02.png',
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'GANA ',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '1.72',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Texas Rangers VS Miami Marlins',
                          style: TextStyle(
                            fontSize: 8,
                          ),
                        ),
                      ],
                    ),
                  ),

                 Container(
        margin: EdgeInsets.only(left: 8.0, right: 8.0), // Margen solo a los lados
        child: Image.asset('assets/x.png',
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.08,
        ),
      ),
    ],
  ),
),
            SizedBox(height: 20),
           Container(
  height: MediaQuery.of(context).size.height * 0.08,
  width: MediaQuery.of(context).size.width * 0.8,
  color: Colors.grey,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Image.asset('assets/baseball-04.png',
        height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width * 0.1,
      ),
      SizedBox(width: 10),
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'GANA ',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Text(
                  '1.72',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Text(
              'Oakland Athletics VS Anaheim Angels',
              style: TextStyle(
                fontSize: 8,
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 8.0, right: 8.0), // Margen solo a los lados
        child: Image.asset('assets/x.png',
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.08,
        ),
      ),
    ],
  ),
),



            SizedBox(height: 20), // Espacio entre el cuadro y el botón
            FloatingActionButton(
              // Botón 'apostar' central
              onPressed: () {
                // Aquí puedes añadir la funcionalidad del botón 'apostar'
              },
              child: Icon(Icons.attach_money, size: 30),
              backgroundColor: Color.fromARGB(255, 135, 251, 242),
              elevation: 0.0,
            ),
          ],
        ),
      ),
    );
  }
}
