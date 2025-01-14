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
          Stack(
            clipBehavior:
                Clip.none, // Allows badge to appear outside the Stack if needed
            children: [
              // Message Icon
              IconButton(
                icon: Image.asset(
                  'assets/icons/message.png', // Replace with your image path
                  color: const Color(0xff6F6E7C),
                ),
                onPressed: () => _onItemTapped(2),
              ),
              // Badge
              Positioned(
                top: 10, // Position badge at the top
                right: 0, // Position badge to the right
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0XFFB5B2FF), // Badge background color
                    borderRadius: BorderRadius.circular(15), // Rounded corners
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 16, // Minimum width of the badge
                    minHeight: 8, // Minimum height of the badge
                  ),
                  child: const Text(
                    '10', // Badge content (e.g., unread message count)
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 10, // Text size
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
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
