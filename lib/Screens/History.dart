import 'package:flutter/material.dart';

class Histo extends StatelessWidget {
  const Histo({Key? key}) : super(key: key);

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
//color de los titulos
    final titleTextStyle = TextStyle(color: Color.fromARGB(255, 136, 247, 228), fontSize: 13);
    //color titulos auxiliares
    final smallTitleTextStyle = TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 9);
    //separador de las testos
    final separator = Container(
      height: 25,
      width: 2,
      color: Colors.white,
    );

    //ancho de los textos
    Widget fixedWidthText(String text, TextStyle style, double width) {
      return Container(
        width: width,
        alignment: Alignment.center,  
         child: Text(text, style: style, textAlign: TextAlign.center),
      );
    }

    // estilo del fondo de los auxiliares
    Widget textRow() {
      return Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 44, 58, 106),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              fixedWidthText('10/05/2022', smallTitleTextStyle, 90), 
              separator,
              fixedWidthText('millonarios vs junior', smallTitleTextStyle, 100), 
              separator,
              fixedWidthText('millonarios', smallTitleTextStyle, 70), 
              separator,
              fixedWidthText('gana', smallTitleTextStyle, 50), 
              separator,
              fixedWidthText('1000000', smallTitleTextStyle, 80), 
            ],
          ),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: appGradient,
          ),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Historial',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 10, 3, 51),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        fixedWidthText('Fecha apuesta', titleTextStyle, 90),
                        separator,
                        fixedWidthText('Juego', titleTextStyle, 100), 
                        separator,
                        fixedWidthText('Apuesta', titleTextStyle, 70), 
                        separator,
                        fixedWidthText('Estado Apuesta', titleTextStyle, 50), 
                        separator,
                        fixedWidthText('Ganancias', titleTextStyle, 80),
                      ],
                    ),
                  ),
                ),
                 SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return textRow(); 
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
