import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color(0xFF181c1e),
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_download),
            title: Text('Downloads'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('Watchlist'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            title: Text('Purchases'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        elevation: 1,
        selectedFontSize: 11,
        unselectedFontSize: 11,
        backgroundColor: Color(0xFF181c1e),
        unselectedItemColor: Colors.grey[700],
        currentIndex: selectedIndex,
        selectedItemColor: Color(0xFF00a7df),
        onTap: onItemTapped,
      ),
    );
  }
}
