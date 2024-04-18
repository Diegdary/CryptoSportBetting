import 'package:flutter/material.dart';

class bestscreen extends StatelessWidget {
  const bestscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: SizedBox(
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "Apuestas",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  //CONTAINER DE LA CAJA DE LA APUESTA 1
                  height: 95,
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
                        height: 70,
                        width: 70,
                        child: Image.asset('assets/baltimore.png'),
                        
                        
                      ),
                      Container(
                          child: Column(
                        children: [
                          SizedBox(
                            height: 25,
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
                        child: Icon(
                          Icons.cancel,
                          size: 40,
                          color: Color.fromARGB(255, 135, 251, 242)
                          
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,

                ),
                Container(
                  //CONTAINER DE LA CAJA DE LA APUESTA 2
                  height: 95,
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
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        //remplazar con imagen
                        height: 70,
                        width: 70,
                        child: Image.asset('assets/baltimore.png'),
                        
                        
                      ),
                      Container(
                          child: Column(
                        children: [
                          SizedBox(
                            height: 25,
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
                        child: Icon(
                          Icons.cancel,
                          size: 40,
                          color: Color.fromARGB(255, 135, 251, 242)
                          
                        ),
                      ),
                    ],
                  ),
                ),
                
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("exit"),
          )
        ]),
      ),
    );
  }
}
