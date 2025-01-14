import 'package:flutter/material.dart';
import 'widgets/badge_icon.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int _selectedIndex = 0;

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
          BadgeIcon(
            assetPath: 'assets/icons/card.png',
            onPressed: () => _onItemTapped(0),
          ),
          BadgeIcon(
            assetPath: 'assets/icons/fire.png',
            badgeText: ' ',
            onPressed: () => _onItemTapped(1),
          ),
          BadgeIcon(
            assetPath: 'assets/icons/message.png',
            badgeText: '10', // Example badge text
            onPressed: () => _onItemTapped(2),
          ),
          BadgeIcon(
            assetPath: 'assets/icons/User.png',
            onPressed: () => _onItemTapped(3),
          ),
        ],
      ),
    );
  }
}
