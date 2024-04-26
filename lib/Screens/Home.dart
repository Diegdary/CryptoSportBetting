import 'package:flutter/material.dart';
import '../Screens/HomeContent.dart';
import '../Screens/Support.dart';
import '../Screens/wallet.dart';
import '../Screens/profile.dart';
import '../Screens/betscreen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const String routname = "Home";

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  bool _isModalOpen = false; // Variable para controlar si la hoja modal está abierta
  final List<Widget> _screens = [
    HomeContent(),
    Suport(),
    Container(), // Este es un marcador de posición para la pantalla de apuestas
    Wall(),
    ProfScreen(),
  ];

  void _onItemTapped(int index) {
    if (index == 2) {
      _showModalBottomSheet(context);
    } else {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  void _showModalBottomSheet(BuildContext context) {
    if (!_isModalOpen) {
      setState(() {
        _isModalOpen = true;
      });
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        enableDrag: true,
        backgroundColor: Color.fromARGB(255, 44, 58, 106),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        builder: (context) => bestscreen(), // Asegúrate de tener esta pantalla definida
      ).whenComplete(() {
        setState(() {
          _isModalOpen = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      floatingActionButton: Container(
        height: 70.0,
        width: 70.0,
        padding: EdgeInsets.all(15), // Ajusta este valor según sea necesario
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 44, 58, 106), // Mismo color que la barra de navegación
          shape: BoxShape.circle,
        ),
        child: FloatingActionButton(
          onPressed: () => _onItemTapped(2),
          child: Icon(Icons.attach_money, size: 30),
          backgroundColor: Color.fromARGB(255, 135, 251, 242), // Mismo color que la barra de navegación
          elevation: 0.0, // Elevación cero para evitar sombras
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        
        notchMargin: 0.0, // Elimina el notchMargin para reducir el espacio
       child: Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home, color: Color.fromARGB(255, 135, 251, 242)),
            onPressed: () => _onItemTapped(0),
          ),
          Text('Inicio', style: TextStyle(color: Colors.white,fontSize: 11))
        ],
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.person, color: Color.fromARGB(255, 135, 251, 242)),
            onPressed: () => _onItemTapped(1),
          ),
          Text('Soporte', style: TextStyle(color: Colors.white,fontSize: 11))
        ],
      ),
            SizedBox(width: 40), // Ajusta o elimina según sea necesario para alinear el botón
           Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.wallet, color: Color.fromARGB(255, 135, 251, 242)),
            onPressed: () => _onItemTapped(3),
          ),
          Text('Billetera',style: TextStyle(color: Colors.white,fontSize: 11))
        ],
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.person, color: Color.fromARGB(255, 135, 251, 242)),
            onPressed: () => _onItemTapped(4),
          ),
          Text('Perfil', style: TextStyle(color: Colors.white,fontSize: 11))
        ],
      ),
    ],
  ),
        color: Color.fromARGB(255, 44, 58, 106),
      ),
    );
  }
}