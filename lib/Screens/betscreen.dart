import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BestScreen extends StatefulWidget {
  @override
  _BestScreenState createState() => _BestScreenState();
}

class _BestScreenState extends State<BestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      backgroundColor: Color(0xFF374B7C),
      appBar: AppBar(
        backgroundColor: Color(0xFF374B7C),
        title: Center(
          child: Text(
            'Apuestas',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

      ),
      body: SingleChildScrollView(
         child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height * 0),      
            Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: Color(0xFF101B42),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Image.asset('assets/baltimore.png'),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'GANA ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF87FBF2),
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '1.23',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF87FBF2),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Baltimore VS Atlanta Bravers',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 8,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Image.asset(
                      'assets/x.png',
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.08,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: Color(0xFF101B42),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Image.asset('assets/baseball-02.png'),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'GANA ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF87FBF2),
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '1.72',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF87FBF2),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Texas Rangers VS Miami Marlins',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 8,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Image.asset(
                      'assets/x.png',
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.08,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: Color(0xFF101B42),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Image.asset('assets/baseball-04.png'),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'GANA ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF87FBF2),
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '1.72',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF87FBF2),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Oakland Athletics VS Anaheim Angels',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 8,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Image.asset(
                      'assets/x.png',
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.08,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.8,
             decoration: BoxDecoration(
                color: Color(0xFF101B42),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Apuesta:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF87FBF2),
                        fontSize: 13,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06 * 0.7,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF101B42),
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFBAF4FF),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Image.asset(
                      'assets/token.png',
                      height: MediaQuery.of(context).size.height * 0.04,
                      width: MediaQuery.of(context).size.width * 0.08,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Multiplicador: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF87FBF2),
                    fontSize: 14,
                  ),
                ),
                Text(
                  '2.67',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF87FBF2),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: Color(0xFF101B42),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Center(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Ganancia: ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF87FBF2),
                        ),
                      ),
                      TextSpan(
                        text: '133500',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF3AB1DA),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.attach_money, size: 30),
              backgroundColor: Color.fromARGB(255, 135, 251, 242),
              elevation: 0.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'APOSTAR',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      ),
    );
  }
}
