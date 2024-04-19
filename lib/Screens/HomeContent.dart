import 'dart:math';

import 'package:apuestas/widgets/Betbox.dart';
import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
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
                                style: TextStyle(color: Color(0xFFFFFFFF))))),
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
                                style: TextStyle(color: Color(0xFF1b2552))))),
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
                                style: TextStyle(color: Color(0xFFFFFFFF))))),
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
                      Text("Mie", style: TextStyle(color: Color(0xFF101b42))),
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
                      Text("Jue", style: TextStyle(color: Color(0xFFFFFFFF))),
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
                      Text("Vie", style: TextStyle(color: Color(0xFFFFFFFF))),
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
                      Text("Sab", style: TextStyle(color: Color(0xFFFFFFFF))),
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
                      Text("Dom", style: TextStyle(color: Color(0xFFFFFFFF))),
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
                      Text("Lun", style: TextStyle(color: Color(0xFFFFFFFF))),
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
                      Text("Mar", style: TextStyle(color: Color(0xFFFFFFFF))),
                      Text("12", style: TextStyle(color: Color(0xFFFFFFFF)))
                    ]),
                  ),
                ],
              ),
            ),
            Container(
              height: 408,
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: BetBox(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: BetBox(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: BetBox(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: BetBox(),
                      )
                    ],
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
