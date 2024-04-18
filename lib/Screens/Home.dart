import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../Screens/profile.dart';
import '../Screens/History.dart';
import '../Screens/Support.dart';
import '../Screens/wallet.dart';
import '../Screens/HomeContent.dart';

bool _isModalOpen = false;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  static const String routName = "Home";

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PersistentTabController _controller;
  bool _isModalOpen = false;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [
      HomeContent(),
      Suport(),
      Container(),
      Wall(),
      ProfScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home, color: Color(0xFF3cb4dc)),
        title: "Home",
        inactiveColorPrimary: Color(0xFF3cb4dc).withOpacity(0.6),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.help, color: Color(0xFF3cb4dc)),
        title: "Soporte",
        inactiveColorPrimary: Color(0xFF3cb4dc).withOpacity(0.6),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.attach_money, color: Color(0xFF3cb4dc)),
        title: "APOSTAR",
        inactiveColorPrimary: Color(0xFF3cb4dc).withOpacity(0.6),
        onPressed: (context) {
          if (context != null) {
            _showModalBottomSheet(context);
          }
        },
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.wallet, color: Color(0xFF3cb4dc)),
        title: "Billetera",
        inactiveColorPrimary: Color(0xFF3cb4dc).withOpacity(0.6),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person, color: Color(0xFF3cb4dc)),
        title: "Mi perfil",
        inactiveColorPrimary: Color(0xFF3cb4dc).withOpacity(0.6),
      ),
    ];
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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        builder: (context) => buildsheet(),
      ).whenComplete(() {
        setState(() {
          _isModalOpen = false;
        });
      });
    } else {
      if (Navigator.of(context).canPop()) {
        Navigator.of(context).pop();
      }
      setState(() {
        _isModalOpen = false;
      });
    }
  }

  Widget buildsheet() => DraggableScrollableSheet(
        initialChildSize: 0.7,
        builder: (_, controller) => Container(
          color: Colors.white,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Contenido de la hoja inferior",
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      );

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
        colorBehindNavBar: Color(0xFF141c44),
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
      navBarStyle: NavBarStyle.style15,
    );
  }
}
