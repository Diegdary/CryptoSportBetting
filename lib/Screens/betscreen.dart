import 'package:flutter/material.dart';

class bestscreen extends StatelessWidget {
  const bestscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height*80/100,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(
            height: 15,
          ),
          Text(
            "Apuestas",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  //CONTAINER DE LA CAJA DE LA APUESTA 1
                  height: 75,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 16, 27, 66),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black.withOpacity(0.5), // Color de la sombra
                        spreadRadius: 2, // Extensión de la sombra
                        blurRadius: 7, // Desenfoque de la sombra
                        offset:
                            Offset(0, 3), // Cambios de posición de la sombra
                      ),
                    ],
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        //remplazar con imagen
                        height: 50,
                        width: 50,
                        child: Image.asset('assets/baltimore.png'),
                      ),
                      Container(
                          child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "GANA 1.23",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color.fromARGB(255, 135, 251, 242)),
                          ),
                          Text(
                            "Baltimore Oriles vs Atlanta Braves",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      )),
                      Container(
                        child: Icon(Icons.cancel,
                            size: 40,
                            color: Color.fromARGB(255, 135, 251, 242)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  //CONTAINER DE LA CAJA DE LA APUESTA 2
                  height: 75,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 16, 27, 66),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black.withOpacity(0.5), // Color de la sombra
                        spreadRadius: 2, // Extensión de la sombra
                        blurRadius: 7, // Desenfoque de la sombra
                        offset:
                            Offset(0, 3), // Cambios de posición de la sombra
                      ),
                    ],
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        //remplazar con imagen
                        height: 50,
                        width: 50,
                        child: Image.asset('assets/baseball-02.png'),
                      ),
                      Container(
                          child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "GANA 1.72",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color.fromARGB(255, 135, 251, 242)),
                          ),
                          Text(
                            "Texas Rangers VS Miami Marlins",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      )),
                      Container(
                        child: Icon(Icons.cancel,
                            size: 40,
                            color: Color.fromARGB(255, 135, 251, 242)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  //CONTAINER DE LA CAJA DE LA APUESTA 3
                  height: 75,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 16, 27, 66),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black.withOpacity(0.5), // Color de la sombra
                        spreadRadius: 2, // Extensión de la sombra
                        blurRadius: 7, // Desenfoque de la sombra
                        offset:
                            Offset(0, 3), // Cambios de posición de la sombra
                      ),
                    ],
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        //remplazar con imagen
                        height: 50,
                        width: 50,
                        child: Image.asset('assets/baseball-04.png'),
                      ),
                      Container(
                          child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "GANA 1.69420",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color.fromARGB(255, 135, 251, 242)),
                          ),
                          Text(
                            "Oakland Athletics VS Anaheim Angels",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      )),
                      Container(
                        child: Icon(Icons.cancel,
                            size: 40,
                            color: Color.fromARGB(255, 135, 251, 242)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 16, 27, 66),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5), // Color de la sombra
                  spreadRadius: 2, // Extensión de la sombra
                  blurRadius: 7, // Desenfoque de la sombra
                  offset: Offset(0, 3), // Cambios de posición de la sombra
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Text(
                    "Apuesta:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 135, 251, 242),
                        fontSize: 20),
                  ),
                ),
                Container(
                  height: 40,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 135, 251, 242),
                  ),
                  child: TextField(
                    decoration: InputDecoration(),
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  child: Image.asset('assets/token.png'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              "Multiplicador 2.67",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color.fromARGB(255, 135, 251, 242)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 16, 27, 66),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5), // Color de la sombra
                  spreadRadius: 2, // Extensión de la sombra
                  blurRadius: 7, // Desenfoque de la sombra
                  offset: Offset(0, 3), // Cambios de posición de la sombra
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Text(
                    "Ganancia:",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 135, 251, 242),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "133500",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 135, 251, 242),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: 40,

            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Apostar",style: (
                TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
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
          SizedBox(
            height: 10,
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
        ]),
      ),
    );
  }
}
