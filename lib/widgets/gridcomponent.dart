import 'package:flutter/material.dart';

class CustomGridItem extends StatefulWidget {
  final String letter;
  final String title;

  const CustomGridItem({super.key, required this.letter, required this.title});

  @override
  _CustomGridItemState createState() => _CustomGridItemState();
}

class _CustomGridItemState extends State<CustomGridItem> {
  bool _isSelected = false; // Track if the item is selected

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // Colors that will change based on selection
    Color borderColor =
        _isSelected ? const Color(0xff8B88EF) : const Color(0xffC4C4C4);
    Color circleColor =
        _isSelected ? const Color(0xff8B88EF) : const Color(0xff232A2E);
    Color textColor = const Color(0xffC4C4C4);

    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected; // Toggle selection
        });
      },
      child: Container(
        padding: const EdgeInsets.all(13),
        decoration: BoxDecoration(
          color: const Color(0xff232A2E),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: borderColor, // Change border color based on selection
            width: 1,
          ),
        ),
        height: 57,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: screenWidth * 0.07,
              width: screenWidth * 0.07,
              decoration: BoxDecoration(
                color: circleColor, // Change circle color based on selection
                shape: BoxShape.circle,
                border: Border.all(
                  color: borderColor, // Border color changes when selected
                  width: 1,
                ),
              ),
              child: Center(
                child: Text(
                  widget.letter,
                  style: TextStyle(
                    color: textColor, // Change text color inside the circle
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 9),
            Expanded(
              child: Text(
                widget.title,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: textColor, // Change title text color
                  fontFamily: 'Proxima',
                ),
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
