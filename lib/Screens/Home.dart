import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../Screens/profile.dart';
import '../Screens/search.dart';
import '../Screens/History.dart';
import '../Screens/Support.dart';
import '../Screens/wallet.dart';
import '../Screens/HomeContent.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const String routName = "Home";
  static PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      HomeContent(),
      Suport(),
      Searchpage(),
      Wall(),
      ProfScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home, color: Color(0xFF3cb4dc)),
        title: ("Home"),
        activeColorPrimary: Color(0xFF141c44),
        inactiveColorPrimary: Color(0xFF3cb4dc).withOpacity(0.6),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.help, color: Color(0xFF3cb4dc)),
        title: ("Soporte"),
        activeColorPrimary: Color(0xFF141c44),
        inactiveColorPrimary: Color(0xFF3cb4dc).withOpacity(0.6),
      ),
      PersistentBottomNavBarItem(
        icon: Container(
          decoration: BoxDecoration(
            color: Color(0xFF3cb4dc),
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: EdgeInsets.all(4),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF3cb4dc),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(Icons.attach_money, color: Color(0xFF141c44)),
              ),
            ),
          ),
        ),
        title: ("APOSTAR"),
        activeColorPrimary: Color(0xFF141c44),
        inactiveColorPrimary: Color(0xFF3cb4dc).withOpacity(0.6),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.wallet, color: Color(0xFF3cb4dc)),
        title: ("Billetera"),
        activeColorPrimary: Color(0xFF141c44),
        inactiveColorPrimary: Color(0xFF3cb4dc).withOpacity(0.6),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person, color: Color(0xFF3cb4dc)),
        title: ("My perfil"),
        activeColorPrimary: Color(0xFF141c44),
        inactiveColorPrimary: Color(0xFF3cb4dc).withOpacity(0.6),
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
