import 'package:flutter/material.dart';
import 'History.dart';

class ProfScreen extends StatefulWidget {
  const ProfScreen({Key? key}) : super(key: key);

  @override
  State<ProfScreen> createState() => _ProfScreenState();
}

class _ProfScreenState extends State<ProfScreen> {
  TextEditingController _dateController = TextEditingController();

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
                //height: MediaQuery.of(context).size.height,
                child: Column(
                  //columnas
                  children: [
                    Container(
                      // color: Colors.pink,
                      margin: EdgeInsets.fromLTRB(0, 55.0, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                            child: const Text(
                              "Mi perfil",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 40, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF3594c9),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Icon(Icons.create_rounded,
                                  size: 40, color: Color(0xFF293666)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 30.0, 0, 0),
                      child: CircleAvatar(
                        minRadius: 50,
                        backgroundImage: AssetImage('assets/login.png'),
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
                        style: TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                            labelText: "Balance",
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFFFFFFF))),
                            labelStyle: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 40.0, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 50.0,
                            width: 150,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(50)),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF3ec2e4),
                                    Color(0xFF295faa)
                                  ],
                                )),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent),
                              child: const Text("Dar de baja",
                                  style: TextStyle(fontSize: 16)),
                            ),
                          ),
                          Container(
                            height: 50.0,
                            width: 150,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(50)),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF3ec2e4),
                                    Color(0xFF295faa)
                                  ],
                                )),
                            child: ElevatedButton(
                              onPressed: () => showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                enableDrag: true,
                                backgroundColor:
                                    Color.fromARGB(255, 44, 58, 106), //aqui
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(20)),
                                ),
                                builder: (context) => Histo(),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent),
                              child: const Text("Historial",
                                  style: TextStyle(fontSize: 16)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                    ),
                  ],
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
