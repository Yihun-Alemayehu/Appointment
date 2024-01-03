import 'package:doctor_appointment/main.dart';
import 'package:doctor_appointment/screens/appointment_screen.dart';
import 'package:doctor_appointment/screens/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainLayoutScreen extends StatefulWidget {
  const MainLayoutScreen({super.key});

  @override
  State<MainLayoutScreen> createState() => _MainLayoutScreenState();
}

class _MainLayoutScreenState extends State<MainLayoutScreen> {
  int _selectedTab = 0;
  List pages = const [
    HomePage(),
    AppointmentScreen(),
    HomePage(),
    AppointmentScreen(),
    AuthScreen(),
  ];

  void _handleIndexChanged(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedTab],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _selectedTab,
        onTap: _handleIndexChanged,
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            selectedColor: Colors.blueAccent.shade700,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: const Icon(Icons.calendar_view_day_rounded),
            title: const Text("Appointment"),
            selectedColor: Colors.blueAccent.shade700,
          ),

          // Add post
          SalomonBottomBarItem(
            icon: const Icon(Icons.add_circle),
            title: const Text("Add"),
            selectedColor: Colors.blueAccent.shade700,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: const Icon(Icons.chat),
            title: const Text("chat"),
            selectedColor: Colors.blueAccent.shade700,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text("Profile"),
            selectedColor: Colors.blueAccent.shade700,
          ),
        ],
      ),
    );
  }
}
