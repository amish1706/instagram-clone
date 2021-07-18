import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:insta/screens/all.dart';
import 'package:insta/Styles/black_ring.dart';

class Bottom_Nav extends StatefulWidget {
  const Bottom_Nav({Key? key}) : super(key: key);

  @override
  _Bottom_NavState createState() => _Bottom_NavState();
}

class _Bottom_NavState extends State<Bottom_Nav> {
  int _currentIndex = 0;
  final tabs = [HomePg(), Search(), Add(), Notif(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30.0,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() => _currentIndex = value);
        },
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              label: '',
              activeIcon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
              )),
          BottomNavigationBarItem(
              label: '',
              activeIcon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              icon: Icon(
                Icons.search_outlined,
                color: Colors.black,
              )),
          BottomNavigationBarItem(
              label: '',
              activeIcon: Icon(
                Icons.add_box_rounded,
                color: Colors.black,
              ),
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.black,
              )),
          BottomNavigationBarItem(
              label: '',
              activeIcon: Icon(
                Icons.favorite_rounded,
                color: Colors.black,
              ),
              icon: Icon(
                Icons.favorite_outline_outlined,
                color: Colors.black,
              )),
          BottomNavigationBarItem(
              label: '',
              activeIcon: BlackRing(
                padding: 1.5,
                width: 1.5,
                child: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile1.jpg'),
                    radius: 15.0),
              ),
              icon: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile1.jpg'),
                  radius: 15.0)),
        ],
      ),
      body: tabs[_currentIndex],
    );
  }
}
