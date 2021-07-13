import 'package:flutter/material.dart';
import 'package:trial/Screens/chat/chat.dart';
import 'package:trial/Screens/profile/profile.dart';
import 'constants.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:trial/Screens/meet/meet.dart';

class MyHome extends StatelessWidget {
  final int index;
  const MyHome({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;
    _controller = PersistentTabController(initialIndex: index);

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: kPrimaryColor,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        colorBehindNavBar: Colors.white,
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
      navBarStyle: NavBarStyle.neumorphic,
    );
  }
}

List<Widget> _buildScreens() {
  return [Chat(), Meeting(), ProfilePage()];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(Icons.chat),
      title: ("Chat"),
      activeColorPrimary: kwhite,
      inactiveColorPrimary: kPrimaryLightColor,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.voice_chat),
      title: ("Meet"),
      activeColorPrimary: kwhite,
      inactiveColorPrimary: kPrimaryLightColor,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.account_circle),
      title: ("Profile"),
      activeColorPrimary: kwhite,
      inactiveColorPrimary: kPrimaryLightColor,
    ),
  ];
}
