import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 44, 58, 106),
                Color.fromARGB(255, 12, 13, 52),
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 55.0, 0, 0),
                      child: Text(
                        "Bienvenido",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 30.0, 0, 0),
                      child: Image(
                        image: AssetImage('assets/login.png'),
                        width: 250.0,
                      ),
                    ),
                    Container(
                      width: 300.0,
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                            labelText: "Nombre de usuario",
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFFFFFFF))),
                            labelStyle: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Container(
                      width: 300.0,
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                            labelText: "Contraseña",
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFFFFFFF))),
                            labelStyle: TextStyle(color: Colors.white)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
