import 'package:flutter/material.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int _selectedIndex = 0;

  // Function for bottom nav item tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      height: screenHeight * 0.07,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        color: Color(0xFF0F1115),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Image.asset(
              'assets/icons/card.png', // Replace with your image path

              color: const Color(0xff6F6E7C), // Optional tint
            ),
            onPressed: () => _onItemTapped(0),
          ),
          IconButton(
            icon: Image.asset(
              'assets/icons/fire.png', // Replace with your image path

              color: const Color(0xff6F6E7C),
            ),
            onPressed: () => _onItemTapped(1),
          ),
          IconButton(
            icon: Image.asset(
              'assets/icons/message.png', // Replace with your image path
              color: const Color(0xff6F6E7C),
            ),
            onPressed: () => _onItemTapped(2),
          ),
          IconButton(
            icon: Image.asset(
              'assets/icons/User.png', // Replace with your image path
              color: const Color(0xff6F6E7C),
            ),
            onPressed: () => _onItemTapped(3),
          ),
        ],
      ),
    );
  }
}
