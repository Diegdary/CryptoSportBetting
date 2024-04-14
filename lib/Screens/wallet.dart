import 'package:flutter/material.dart';

class Wall extends StatelessWidget {
  const Wall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallet'),
      ),
      body: Center(
        child: Text('Esta es la pagina de billetera'),
      ),
    );
  }
}
