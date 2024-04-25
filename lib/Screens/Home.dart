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
  bool _isModalOpen =
      false; // Variable para controlar si la hoja modal está abierta
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
        builder: (context) =>
            bestscreen(), // Asegúrate de tener esta pantalla definida
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
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Soporte',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'APOSTAR',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Billetera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Mi perfil',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Color(0xFF3cb4dc),
        unselectedItemColor: Color(0xFF3cb4dc).withOpacity(0.6),
        onTap: _onItemTapped,
      ),
    );
  }
}
