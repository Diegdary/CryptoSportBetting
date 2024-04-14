import 'package:apuestas/Screens/MyHomePage.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../Screens/Myhomepage.dart';
import '../Screens/home.dart';
import '../Screens/config.dart';
import '../Screens/search.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      Home(),
      Searchpage(), 
      ConfigScreen(), 
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
     PersistentBottomNavBarItem(
        icon: Icon(Icons.home, color: Color(0xFF3cb4dc)), 
        title: ("Inicio"),
        activeColorPrimary: Color(0xFF141c44), 
        inactiveColorPrimary: Color(0xFF3cb4dc).withOpacity(0.6), // Color de ícono inactivo más oscuro
      ),
      PersistentBottomNavBarItem(
  icon: Container(
    decoration: BoxDecoration(
      color: Color(0xFF3cb4dc), // Color del círculo
      shape: BoxShape.circle,
    ),
    child: Padding(
      padding: EdgeInsets.all(4), // Espaciado para el círculo exterior
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF3cb4dc), // Color del círculo interior
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(Icons.attach_money, color: Color(0xFF141c44)), // Símbolo de dólar
        ),
      ),
    ),
  ),
  title: ("APOSTAR"),
  activeColorPrimary: Color(0xFF141c44),
  inactiveColorPrimary: Color(0xFF3cb4dc).withOpacity(0.6),
),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.settings, color: Color(0xFF3cb4dc)), // Color de ícono actualizado
        title: ("Configuración"),
        activeColorPrimary: Color(0xFF141c44), // Color de barra activa actualizado
        inactiveColorPrimary: Color(0xFF3cb4dc).withOpacity(0.6), // Color de ícono inactivo más oscuro
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Color(0xFF141c44),
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar:Color(0xFF141c44),
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style15, // Elige el estilo aquí
    );
  }
}