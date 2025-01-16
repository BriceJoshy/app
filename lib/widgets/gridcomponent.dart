import 'package:flutter/material.dart';

class CustomGridItem extends StatefulWidget {
  final String letter;
  final String title;

  const CustomGridItem({super.key, required this.letter, required this.title});

  @override
  _CustomGridItemState createState() => _CustomGridItemState();
}

class _CustomGridItemState extends State<CustomGridItem> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    Color circleColor =
        _isSelected ? const Color(0xff8B88EF) : const Color(0xff232A2E);
    Color circleBorderColor =
        _isSelected ? const Color(0xff8B88EF) : const Color(0xffC4C4C4);
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
          border: _isSelected
              ? Border.all(
                  color: circleBorderColor,
                  width: 2,
                )
              : null,
        ),
        height: 57,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: screenWidth * 0.055,
              width: screenWidth * 0.055,
              decoration: BoxDecoration(
                color: circleColor,
                shape: BoxShape.circle,
                border: Border.all(
                  color: circleBorderColor,
                  width: 1,
                ),
              ),
              child: Center(
                child: Text(
                  widget.letter,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Transform.scale(
                scaleX: 1.05,
                child: Text(
                  widget.title,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    height: 1.1,
                    fontSize: 14,
                    color: textColor,
                    fontFamily: 'Proxima',
                    overflow: TextOverflow.visible,
                  ),
                  softWrap: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
