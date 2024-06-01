import 'dart:math';

import 'package:apuestas/Screens/betscreen.dart';
import 'package:apuestas/main.dart';
import 'package:apuestas/share_prefs/PreferenciaUsuario.dart';
import 'package:apuestas/widgets/Betbox.dart';
import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pref = PreferenciaUsuario();
    List listApuestas = usersList[pref.gID]["apuestas"];

    return Scaffold(
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
            child: Container(
              width: MediaQuery.of(context).size.width,
              //height: MediaQuery.of(context).size.height,
              child: Column(children: [
                Container(
                    margin: EdgeInsets.fromLTRB(0, 35, 0, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Balance: \$10.00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          child: Image.asset('assets/token.png'),
                        )
                      ],
                    )),
                Container(
                  clipBehavior: Clip.hardEdge,
                  width: (MediaQuery.of(context).size.width * 90 / 100),
                  height: 40.0,
                  decoration: const BoxDecoration(
                    color: Color(0xFF1b2552),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Color(0x0000FFff),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(40)),
                          ),
                          child: Center(
                              child: Text("Futbol",
                                  style: TextStyle(color: Color(0xFFFFFFFF)))),
                        ),
                      ),
                      Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                              color: Color(0x0000FFff),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(40)),
                            ),
                            padding: EdgeInsets.all(5.0),
                            child: Center(
                                child: Text("Tennis",
                                    style:
                                        TextStyle(color: Color(0xFFFFFFFF))))),
                      ),
                      Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF00FFff),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(40)),
                            ),
                            padding: EdgeInsets.all(5.0),
                            child: Center(
                                child: Text("Baseball",
                                    style:
                                        TextStyle(color: Color(0xFF1b2552))))),
                      ),
                      Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                              color: Color(0x0000FFff),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(40)),
                            ),
                            padding: EdgeInsets.all(5.0),
                            child: Center(
                                child: Text("Basketball",
                                    style:
                                        TextStyle(color: Color(0xFFFFFFFF))))),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 35, 0, 20),
                  width: (MediaQuery.of(context).size.width * 90 / 100),
                  height: 40.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 45.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF00FFff),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(children: [
                          Text("Mie",
                              style: TextStyle(color: Color(0xFF101b42))),
                          Text("5", style: TextStyle(color: Color(0xFF101b42)))
                        ]),
                      ),
                      Container(
                        width: 45.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF101b42),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(children: [
                          Text("Jue",
                              style: TextStyle(color: Color(0xFFFFFFFF))),
                          Text("6", style: TextStyle(color: Color(0xFFFFFFFF)))
                        ]),
                      ),
                      Container(
                        width: 45.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF101b42),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(children: [
                          Text("Vie",
                              style: TextStyle(color: Color(0xFFFFFFFF))),
                          Text("7", style: TextStyle(color: Color(0xFFFFFFFF)))
                        ]),
                      ),
                      Container(
                        width: 45.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF101b42),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(children: [
                          Text("Sab",
                              style: TextStyle(color: Color(0xFFFFFFFF))),
                          Text("8", style: TextStyle(color: Color(0xFFFFFFFF)))
                        ]),
                      ),
                      Container(
                        width: 45.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF101b42),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(children: [
                          Text("Dom",
                              style: TextStyle(color: Color(0xFFFFFFFF))),
                          Text("9", style: TextStyle(color: Color(0xFFFFFFFF)))
                        ]),
                      ),
                      Container(
                        width: 45.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF101b42),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(children: [
                          Text("Lun",
                              style: TextStyle(color: Color(0xFFFFFFFF))),
                          Text("10", style: TextStyle(color: Color(0xFFFFFFFF)))
                        ]),
                      ),
                      Container(
                        width: 45.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF101b42),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(children: [
                          Text("Mar",
                              style: TextStyle(color: Color(0xFFFFFFFF))),
                          Text("12", style: TextStyle(color: Color(0xFFFFFFFF)))
                        ]),
                      ),
                    ],
                  ),
                ),
                /////////////////////////////////////////
                Column(
                  children: List.generate(
                    listApuestas.length,
                    (index) => Container(
                      margin: EdgeInsets.only(top: 20),
                      width: (MediaQuery.of(context).size.width * 90 / 100),
                      height: 110.0,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: Color(0xFF101b42),
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          //information about the bet
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  //logo, name, probability
                                  children: [
                                    Container(
                                        child: const Image(
                                      image:
                                          AssetImage('assets/baseball-01.png'),
                                      width: 40.0,
                                    )),
                                    Text(
                                      listApuestas[index]["juego"][0]
                                          ["equipo1"],
                                      style:
                                          TextStyle(color: Color(0xFFFFFFFFd8)),
                                    ),
                                    Text(
                                      "1.72",
                                      style:
                                          TextStyle(color: Color(0xFF70d0d8)),
                                    )
                                  ],
                                ),
                                Container(
                                  child: const Image(
                                    image: AssetImage("assets/versus.png"),
                                    width: 70.0,
                                  ),
                                ),
                                Column(
                                  //logo, name, probability
                                  children: [
                                    Container(
                                        child: const Image(
                                      image: AssetImage('assets/baltimore.png'),
                                      width: 40.0,
                                    )),
                                    Text(
                                      listApuestas[index]["juego"][0]
                                          ["equipo2"],
                                      style:
                                          TextStyle(color: Color(0xFFFFFFFFd8)),
                                    ),
                                    Text(
                                      "1.23",
                                      style:
                                          TextStyle(color: Color(0xFF70d0d8)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                      child: Container(
                                    color: Color(0xFF0e2256),
                                    child: Center(
                                      child: Text(
                                        "GANA",
                                        style:
                                            TextStyle(color: Color(0xFF2761a1)),
                                      ),
                                    ),
                                  )),
                                  Expanded(
                                      child: Container(
                                    color: Color(0xFF21387c),
                                    child: Center(
                                      child: Text(
                                        "GANA",
                                        style:
                                            TextStyle(color: Color(0xFF70d0d8)),
                                      ),
                                    ),
                                  ))
                                ],
                              ),
                              color: Colors.pink,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
                /////////////////////////////////////////
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
