import 'package:crunch_bite/screens/landingPage/bottomTabs/CrunchyHomeScreen.dart';
import 'package:crunch_bite/screens/landingPage/bottomTabs/DineoutHomeScreen.dart';
import 'package:crunch_bite/screens/landingPage/bottomTabs/FoodHomeScreen.dart';
import 'package:crunch_bite/screens/landingPage/bottomTabs/InstaMartHomeScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const LandingPageScreen());

class LandingPageScreen extends StatelessWidget {
  const LandingPageScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    CrunchyHomeScreen(),
    FoodHomeScreen(),
    InstaMartHomeScreen(),
    DineoutHomeScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Text('Crunch bite landing page'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Crunchy',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Food',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'InstaMart',
          ), BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Dineout',

          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
