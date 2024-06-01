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
  OverlayEntry? _overlayEntry;

  final List<Widget> _screens = [
    HomeContent(),
    Suport(),
    Container(),
    Wall(),
    ProfScreen(),
  ];

  void _onItemTapped(int index) {
    if (index == 2) {
      _toggleOverlay(context);
    } else {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  void _toggleOverlay(BuildContext context) {
    if (_overlayEntry == null) {
      _overlayEntry = _createOverlayEntry(context);
      Overlay.of(context)!.insert(_overlayEntry!);
    } else {
      _overlayEntry!.remove();
      _overlayEntry = null;
    }
  }

  OverlayEntry _createOverlayEntry(BuildContext context) {
    return OverlayEntry(
      builder: (BuildContext context) => GestureDetector(
        onTap: () {
          _toggleOverlay(context);
        },
        behavior: HitTestBehavior.translucent,
        child: Container(
          color: Colors.transparent,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {},
              child: Material(
                color: Colors.transparent,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.9,
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
                  child: BestScreen(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
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
        color: Colors.transparent,
        child: InkWell(
          onTap: () => _onItemTapped(index),
          borderRadius: BorderRadius.circular(35),
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
          splashColor: Color.fromARGB(255, 61, 43, 228).withOpacity(0.2),
          highlightColor: Color.fromARGB(255, 7, 32, 255).withOpacity(0.1),
        ),
      ),
    );
  }
}
