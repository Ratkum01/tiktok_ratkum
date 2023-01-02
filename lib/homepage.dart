import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tiktok_ratkum/pages/uhome.dart';
import 'package:tiktok_ratkum/pages/uplus.dart';
import 'package:tiktok_ratkum/pages/uprofile.dart';
import 'package:tiktok_ratkum/pages/usearch.dart';
import 'package:tiktok_ratkum/pages/usms.dart';

class HomePage extends StatefulWidget {
  
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
final List _pages= [
  UserHomePage( ),
  UserSearchPage(),
  UserPlisPage(),
  UserSmsPage(),
  UserProfilePage()
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_rounded), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.sms_rounded), label: "Sms"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          ]),
    );
  }
}
/*Container(
            height: 120,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubleStories(
                    text: people[index],
                    photoimage: photo[index],
                  );
                }),
          ),*/