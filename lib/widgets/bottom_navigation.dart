
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../screens/createresume/create_resume.dart';
import '../screens/jobhome/job_home_screen.dart';
import '../screens/jobsearch/job_search.dart';
import '../screens/profile/profile_screen.dart';


class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const JobLocaterHome(),
    CreateResume(),
    const Explorer(),
    Profile(),
  ];
  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
          color: const Color(0xff3F0000),
          backgroundColor: Colors.white,
          height: 70.0,
          items: const <Widget>[
            Icon(Icons.home, color: Colors.white, size: 20.0),
            Icon(Icons.receipt, color: Colors.white, size: 20.0),
            Icon(Icons.search, color: Colors.white, size: 20.0),
            Icon(Icons.person_pin, color: Colors.white, size: 20.0),
          ],
          animationDuration: const Duration(milliseconds: 200),
          index: 0,
          animationCurve: Curves.bounceInOut,
          onTap: onTappedBar),
    );
  }
}
