import 'package:flutter/material.dart';

class CustomGridItem extends StatelessWidget {
  final String letter;
  final String title;

  const CustomGridItem({required this.letter, required this.title});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: const Color(0xff232A2E),
        borderRadius: BorderRadius.circular(12),
      ),
      height: 57,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: screenWidth * 0.07,
            width: screenWidth * 0.07,
            decoration: BoxDecoration(
              color: const Color(0xff232A2E),
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xffC4C4C4),
                width: 1,
              ),
            ),
            child: Center(
              child: Text(
                letter,
                style: const TextStyle(
                  color: Color(0xffC4C4C4),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(width: 9),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xffC4C4C4),
                fontFamily: 'Proxima',
              ),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
