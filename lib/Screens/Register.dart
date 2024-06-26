import 'package:apuestas/Screens/Login.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});
  static const String routName = "Register";

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Container(
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
                          "Registrate!",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
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
                              labelText: "E-mail",
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
                              labelText: "Telefono",
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
                              labelText: "Genero",
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFFFFFFF))),
                              labelStyle: TextStyle(color: Colors.white)),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        child: TextFormField(
                          controller: _dateController,
                          style: TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                              labelText: "Fecha",
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFFFFFFF))),
                              labelStyle: TextStyle(color: Colors.white)),
                          readOnly: true,
                          onTap: () {
                            _selectDate();
                          },
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
                            ////
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent),
                          child: const Text("Registrarme!",
                              style: TextStyle(fontSize: 16)),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 30.0, 0, 0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, Login.routName);
                          },
                          child: Text("Iniciar Sesion"),
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

  Future<void> _selectDate() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));

    if (_picked != null) {
      setState(() {
        _dateController.text = _picked.toString().split(" ")[0];
      });
    }
  }
}
