import 'package:apuestas/Screens/Register.dart';
import 'package:apuestas/main.dart';
import 'package:apuestas/share_prefs/PreferenciaUsuario.dart';
import 'package:flutter/material.dart';
import 'package:apuestas/Screens/Home.dart';
import 'package:apuestas/Core/Modelos/Usuario.dart';

class Login extends StatefulWidget {
  Login({super.key, required this.title});
  static const String routName = "Login";
  final String title;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController userController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  String inicioValido = "";

  final pref = PreferenciaUsuario();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
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
            child: Container(
              
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.1,
                  ),
                  width: MediaQuery.of(context).size.width,
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
                          onChanged: (value) {
                            userController.text = value;
                          },
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
                          onChanged: (value) {
                            passwordController.text = value;
                          },
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
                        margin: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                        child: Text(
                          inicioValido,
                          style: TextStyle(color: Color(0xFFaa0000)),
                        ),
                      ),
                      Container(
                        //margin: const EdgeInsets.fromLTRB(0, 40.0, 0, 0),
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
                            for (var i = 0; i < usersList.length; i++) {
                              if (userController.text ==
                                      usersList[i]["nombre"] &&
                                  passwordController.text ==
                                      usersList[i]["password"]) {
                                Usuario usuario =
                                    Usuario.fromJson(usersList[i]);
                                //asignando shared_preference
                                pref.sNombre = usuario.nombre;
                                pref.sEmail = usuario.email;
                                pref.sTelefono = usuario.telefono;
                                pref.sGenero = usuario.genero;
                                pref.sID = i;

                                Navigator.pushReplacementNamed(
                                    context, Home.routname);
                              } else {
                                setState(() {
                                  inicioValido = "datos no validos";
                                });
                              }
                            }
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
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, Register.routName);
                          },
                          child: Text("Register"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0x00FFFFFF)),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                        child: Text(
                          "Ayuda",
                          style: TextStyle(color: Color(0xFFAAAAAA)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
