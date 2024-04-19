import 'package:flutter/material.dart';

class Suport extends StatelessWidget {
  const Suport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color.fromARGB(255, 44, 58, 106),
        Color.fromARGB(255, 12, 13, 52),
      ],
    );

 
    return Container(
      decoration: BoxDecoration(
        gradient: appGradient,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            // Texto "Soporte" en el fondo
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Text(
                  'Soporte',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.80,
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 20, 47, 168).withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    // Texto "Chat" en la parte superior del cuadro del chat
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Chat',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ChatVisual(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class ChatVisual extends StatefulWidget {
   @override
  _ChatVisualState createState() => _ChatVisualState();
}

class _ChatVisualState extends State<ChatVisual> {
  final List<Mensaje> mensajes = [
    Mensaje(texto: "Hola, ¿cómo puedo ayudarte?", esSoporte: true),
    Mensaje(texto: "Ayuda perdi todo mi dinero", esSoporte: false),
    // Agrega más mensajes aquí si lo deseas
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            itemCount: mensajes.length,
            itemBuilder: (context, index) {
              final mensaje = mensajes[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: mensaje.esSoporte ? MainAxisAlignment.start : MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (mensaje.esSoporte) ...[
                      Icon(Icons.support_agent, color: Colors.blue), // Ícono para soporte
                      SizedBox(width: 8.0),
                    ],
                    Column(
                      crossAxisAlignment: mensaje.esSoporte ? CrossAxisAlignment.start : CrossAxisAlignment.end,
                      children: [
                        Text(
                          mensaje.esSoporte ? 'Soporte' : 'Usuario',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: mensaje.esSoporte ? Colors.blue[300] : Colors.grey[200],
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(mensaje.texto),
                          ),
                        ),
                      ],
                    ),
                    if (!mensaje.esSoporte) ...[
                      SizedBox(width: 8.0),
                      Icon(Icons.person, color: Colors.blue), // Ícono para el usuario
                    ],
                  ],
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Escribe aquí...',
                      hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.lightBlueAccent.withOpacity(0.3),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.blue),
                  onPressed: () {
                    // Aquí iría la lógica para enviar mensajes
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Mensaje {
  String texto;
  bool esSoporte;

  Mensaje({required this.texto, required this.esSoporte});
}