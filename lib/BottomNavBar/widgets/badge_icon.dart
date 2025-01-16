import 'package:flutter/material.dart';

class BadgeIcon extends StatelessWidget {
  final String assetPath;
  final String? badgeText; // Badge text is now optional
  final VoidCallback onPressed;

  const BadgeIcon({
    Key? key,
    required this.assetPath,
    required this.onPressed,
    this.badgeText, // Default is null for optional badge
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none, // Allows badge to appear outside the Stack
      children: [
        IconButton(
          icon: Image.asset(
            assetPath,
            color: const Color(0xff6F6E7C),
          ),
          onPressed: onPressed,
        ),
        if (badgeText != null) // Show badge only if badgeText is provided
          Positioned(
            top: 8, // Adjust positioning as needed
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 4,
              ),
              decoration: BoxDecoration(
                color: const Color(0XFFB5B2FF), // Badge background color
                borderRadius: BorderRadius.circular(15),
              ),
              constraints: const BoxConstraints(
                minWidth: 16,
                minHeight: 13,
              ),
              child: Center(
                child: Text(
                  badgeText!,
                  style: const TextStyle(
                    fontFamily: 'Proxima',
                    color: Colors.black,
                    fontSize: 7,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
