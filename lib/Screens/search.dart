import 'package:flutter/material.dart';

class Searchpage extends StatelessWidget {
  const Searchpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pagina de buscar'),
      ),
      body: Center(
        child: Text('Bienvenido a la página de buscar'),
      ),
    );
  }
}
