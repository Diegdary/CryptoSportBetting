import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class BetBox extends StatelessWidget {
  const BetBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(2),
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
                      image: AssetImage('assets/baseball-01.png'),
                      width: 40.0,
                    )),
                    Text(
                      "Atlanta braves",
                      style: TextStyle(color: Color(0xFFFFFFFFd8)),
                    ),
                    Text(
                      "1.72",
                      style: TextStyle(color: Color(0xFF70d0d8)),
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
                      "Baltimore Orioles",
                      style: TextStyle(color: Color(0xFFFFFFFFd8)),
                    ),
                    Text(
                      "1.23",
                      style: TextStyle(color: Color(0xFF70d0d8)),
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
                        style: TextStyle(color: Color(0xFF2761a1)),
                      ),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    color: Color(0xFF21387c),
                    child: Center(
                      child: Text(
                        "GANA",
                        style: TextStyle(color: Color(0xFF70d0d8)),
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
    );
  }
}
