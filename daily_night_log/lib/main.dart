import 'package:flutter/material.dart';
import 'package:daily_night_log/color.dart';
import 'package:daily_night_log/morning.dart';
import 'package:daily_night_log/night.dart';
import 'package:daily_night_log/past.dart';

void main() {
  runApp(const WelcomeScreen());
}

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}
class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Night Log',
      theme: ThemeData(
        primarySwatch: createMaterialColor(const Color(0xFF573C31)),
      ),
      home: const BottomBar(),
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});


  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;
  String _title = 'GardenGuide';
  final List<Widget> children = [
    Morning(),
    Night(),
    Past(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: createMaterialColor(const Color(0xFF573C31)),
      body: children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 25,
        selectedFontSize: 15,
        backgroundColor: createMaterialColor(const Color(0xFF573C31)),
        selectedItemColor: Colors.grey[200],
        unselectedItemColor: Colors.grey[400],
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.wb_sunny), label: 'morning'),
          BottomNavigationBarItem(icon: Icon(Icons.dark_mode), label: 'night'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'past'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            switch (index) {
              case 0:
                {
                  _title = 'Dashboard';
                }
                break;
              case 1:
                {
                  _title = 'Search';
                }
                break;
              case 2:
                {
                  _title = 'Tutorials';
                }
                break;
              case 3:
                {
                  _title = 'Reminders';
                }
                break;
              case 4:
                {
                  _title = 'Settings';
                }
                break;
            }
          });
        },
      ),
    );
  }
}
