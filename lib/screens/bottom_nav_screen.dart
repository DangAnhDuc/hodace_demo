import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hodace_app/screens/home_page.dart';
import 'package:hodace_app/screens/profile_page.dart';
import 'package:hodace_app/theme/color/light_color.dart';

class BottomNavScreen extends StatefulWidget {
  BottomNavScreen({Key key}) : super(key: key);

  @override
  _BottomNavScreenState createState() {
    return _BottomNavScreenState();
  }
}

class _BottomNavScreenState extends State<BottomNavScreen> with WidgetsBindingObserver {
  int selectedIndex = 0;
  double bottomBarHeight;

  ///On change tab bottom menu
  Future<void> _onItemTapped(index) async {
    setState(() {
      selectedIndex = index;
    });
  }
  BottomNavigationBarItem _bottomIcons(IconData icon) {
    return BottomNavigationBarItem(
      //  backgroundColor: Colors.blue,
        icon: Icon(icon),
        title: Text(""));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColor.background,
      body: IndexedStack(
        children: <Widget>[HomePage(), ProfilePage()],
        index: selectedIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: LightColor.background,
        items: [
          _bottomIcons(Icons.home),
          _bottomIcons(Icons.person),
        ],
        selectedFontSize: 10,
        unselectedFontSize: 10,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).accentColor,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: _onItemTapped,
      ),
    );
  }
}