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
  bool _isModalOpen = false;
  final List<Widget> _screens = [
    HomeContent(),
    Suport(),
    Container(),
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
      isScrollControlled: true, // Permite que el bottom sheet tome la altura completa requerida
      enableDrag: true,
      backgroundColor: Color.fromARGB(255, 44, 58, 106),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Wrap(
          children: <Widget>[
            bestscreen(), // Tu widget que contiene el contenido del bottom sheet
          ],
        );
      },
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
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 44, 58, 106),
          shape: BoxShape.circle,
        ),
        child: FloatingActionButton(
          onPressed: () => _onItemTapped(2),
          child: Icon(Icons.attach_money, size: 30),
          backgroundColor: Color.fromARGB(255, 135, 251, 242),
          elevation: 0.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    bottomNavigationBar: SizedBox(
      height: 65,
      child: BottomAppBar(
        notchMargin: 6.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildTabItem(
              icon: Icons.home,
              text: 'Inicio',
              index: 0,
            ),
            _buildTabItem(
              icon: Icons.person,
              text: 'Soporte',
              index: 1,
            ),
            SizedBox(width: 50), 
            _buildTabItem(
              icon: Icons.wallet,
              text: 'Billetera',
              index: 3,
            ),
            _buildTabItem(
              icon: Icons.person,
              text: 'Perfil',
              index: 4,
            ),
          ],
        ),
        color: Color.fromARGB(255, 44, 58, 106),
      ),
    ),
  );
}

  Widget _buildTabItem({
  required IconData icon,
  required String text,
  required int index,
}) {
  return Expanded(
    child: Material(
      color: Colors.transparent, // Asegúrate de que el Material sea transparente
      child: InkWell(
        onTap: () => _onItemTapped(index),
        borderRadius: BorderRadius.circular(35), // Radio de la sombra redondeada
        child: Container(
          height: 90,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(icon, color: Color.fromARGB(255, 135, 251, 242), size: 24),
              Text(text, style: TextStyle(color: Colors.white, fontSize: 11))
            ],
          ),
        ),
        splashColor: Color.fromARGB(255, 61, 43, 228).withOpacity(0.2), // Color de la onda al presionar
        highlightColor: Color.fromARGB(255, 7, 32, 255).withOpacity(0.1), // Color de la sombra al presionar
      ),
    ),
  );
}

}
