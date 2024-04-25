import 'package:flutter/material.dart';
import 'package:apuestas/Screens/Home.dart';

class Login extends StatelessWidget {
  const Login({super.key, required this.title});
  static const String routName = "Login";
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
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
                      child: const Text(
                        "Bienvenido",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 30.0, 0, 0),
                      child: const Image(
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
                        obscureText: true,
                        style: TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                            labelText: "Contraseña",
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFFFFFFF))),
                            labelStyle: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 40.0, 0, 0),
                      height: 50.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50)),
                          gradient: const LinearGradient(
                            colors: [Color(0xFF3ec2e4), Color(0xFF295faa)],
                          )),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, Home.routname);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent),
                        child: const Text("Iniciar sesión",
                            style: TextStyle(fontSize: 16)),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 30.0, 0, 0),
                      child: Text(
                        "Ayuda",
                        style: TextStyle(color: Color(0xFFAAAAAA)),
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
