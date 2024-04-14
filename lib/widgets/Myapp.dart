import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../Screens/Myhomepage.dart';
import '../Screens/home.dart';
import '../Screens/config.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
      return [
         const Home(),
         const MyHomePage(title: 'Flutter Demo Home Page'),
         const ConfigScreen(),
        
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
   
    PersistentBottomNavBarItem(
      icon: Icon(Icons.search),
      title: ("Buscar"),
      activeColorPrimary: Colors.blue,
      inactiveColorPrimary: Colors.grey,
    ),
     PersistentBottomNavBarItem(
      icon: Icon(Icons.home),
      title: ("Inicio"),
      activeColorPrimary: Colors.blue,
      inactiveColorPrimary: Colors.grey,
    ),
   PersistentBottomNavBarItem(
  icon: Icon(Icons.settings),
  title: ("Configuración"),
  activeColorPrimary: Colors.blue,
  inactiveColorPrimary: Colors.grey,
),
  
  ];
    }

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        navBarStyle: NavBarStyle.style15, 
      ),
    );
  }
}
