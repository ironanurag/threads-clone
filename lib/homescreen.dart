import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:threads_clone/data/userData.dart';
import 'package:threads_clone/tabs/activity.dart';
import 'package:threads_clone/tabs/home.dart';
import 'package:threads_clone/tabs/post.dart';
import 'package:threads_clone/tabs/profile.dart';
import 'package:threads_clone/tabs/search.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List<Widget> _screens = [
    // Replace these with your own screens
    PostHomePage(),
    SearchPage(),
    CreatePostPage(),
    ActivityPage(),
    ProfilePage(user: createDummyUser(),),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false, // Remove text labels for selected items
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? Icon(CupertinoIcons.home)
                : Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: 'Add',
          ),
          BottomNavigationBarItem(
           icon: _selectedIndex == 3 ?
           Icon(Icons.favorite):Icon(Icons.favorite_border_rounded),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3 ?Icon(Icons.person_2_outlined):Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
