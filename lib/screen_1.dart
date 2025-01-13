import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the height of the screen
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFF0F1115),
      body: SafeArea(
        bottom: false,
        top: false,
        child: Stack(
          children: [
            // Positioned background image
            Positioned(
              top: -40,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/images/bg.jpg', // Replace with your image path
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width, // Ensure full width
              ),
            ),

            // Positioned container from bottom to halfway point
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: screenHeight / 1.3, // Half the height of the screen
                width: double.infinity, // Full width
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.center,
                    stops: const [
                      0.2,
                      1.0
                    ], // First stop at 10% for transparency
                    colors: [
                      Colors.black.withOpacity(0), // Transparent at the top
                      Colors.black, // Full color at the bottom
                    ],
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Center Content Here',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
