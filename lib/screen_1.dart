import 'package:app/BottomNavBar/bottomNav.dart';
import 'package:app/widgets/gridcomponent.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF0F1115),
      body: SafeArea(
        bottom: false,
        top: false,
        child: Stack(
          children: [
            // Background Image
            Positioned(
              top: -40,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/images/bg.jpg',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            ),

            // Dark Overlay
            Positioned(
              top: -40,
              left: 0,
              right: 0,
              child: Container(
                height: 250, // Adjust this height based on your needs
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.6), // Darker overlay
                      Colors.transparent, // Fades into transparency
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),

            // Text and Icon
            Positioned(
              top: 59,
              child: SizedBox(
                width: screenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Stroll Bonfire',
                          style: TextStyle(
                            fontFamily: 'Proxima',
                            fontSize: 34,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xffCCC8FF),
                            shadows: [
                              Shadow(
                                offset: const Offset(0, 2),
                                blurRadius: 20,
                                color: Colors.black.withOpacity(0.2),
                              ),
                              const Shadow(
                                offset: Offset(0, 0),
                                blurRadius: 2,
                                color: Color(0xFFBEBEBE),
                              ),
                              Shadow(
                                offset: const Offset(0, 1),
                                blurRadius: 2,
                                color: const Color(0xFF24232F).withOpacity(0.5),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Color(0xffCBC9FF),
                          ),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Clock Icon
                        Image.asset(
                          'assets/icons/clock.png',
                          color: const Color(0xffFFFFFF),
                        ),

                        const SizedBox(width: 3),

                        const Text(
                          '22h 00m',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xffFFFFFF),
                              fontFamily: 'Proxima',
                              fontWeight: FontWeight.w600),
                        ),

                        const SizedBox(
                            width: 9.73), // Spacing between time and image

                        // Person Image (Circular image)
                        ClipOval(
                          child: Image.asset(
                            'assets/icons/User.png', // Replace with your image path
                            width: 20, // Image width
                            height: 20, // Image height
                            fit: BoxFit.cover,
                            color: const Color(0xffFFFFFF),
                          ),
                        ),

                        const SizedBox(
                            width: 4), // Spacing between image and number

                        // Number
                        const Text(
                          '103', // Example number
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xffFFFFFF),
                              fontFamily: 'Proxima',
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: screenHeight / 1.3,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.center,
                    stops: const [
                      0.2,
                      1.0,
                    ],
                    colors: [
                      Colors.black.withOpacity(0),
                      Colors.black,
                    ],
                  ),
                ),
                child: SizedBox(
                  width: screenWidth,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 150,
                          width: screenWidth * 0.9,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: const BoxDecoration(
                                  color: Color(0xff0D0F11),
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Image.asset(
                                    'assets/images/image.png',
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 50.0, left: 5),
                                    child: Text(
                                      'Angelina, 28', // Replace with your desired text
                                      style: TextStyle(
                                        fontFamily:
                                            'Proxima', // Ensure the font is added to pubspec.yaml
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFFF5F5F5),
                                        decoration: TextDecoration
                                            .none, // No text decoration
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 15.0, top: 9),
                                    child: SizedBox(
                                      width: 247,
                                      height: 60,
                                      child: Text(
                                        "What is your favorite time of the day?",
                                        style: TextStyle(
                                          fontFamily:
                                              'Proxima Nova', // Ensure the font is added to pubspec.yaml
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,

                                          color: Colors.white,
                                          decoration: TextDecoration
                                              .none, // No text decoration
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        const Text(
                            "“Mine is definitely the peace in the morning.”",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(203, 201, 255, 0.7),
                              fontFamily: 'Proxima',
                              fontSize: 12,
                              fontStyle: FontStyle.italic,
                              decoration: TextDecoration.none,
                            )),
                        const SizedBox(
                          height: 14,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: SizedBox(
                              height: 180,
                              child: GridView.count(
                                crossAxisCount: 2,
                                crossAxisSpacing: 12,
                                mainAxisSpacing: 12,
                                childAspectRatio: (166 / 60),
                                children: const [
                                  CustomGridItem(
                                      letter: 'A',
                                      title: 'The peace in the early mornings'),
                                  CustomGridItem(
                                      letter: 'B',
                                      title: 'The magical golden hours'),
                                  CustomGridItem(
                                      letter: 'C',
                                      title: 'Wind-down time after dinners'),
                                  CustomGridItem(
                                      letter: 'D',
                                      title: 'The serenity past midnight'),
                                ],
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pick your option.",
                                    style: TextStyle(
                                        fontFamily: 'Proxima',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xffE5E5E5)),
                                  ),
                                  Text(
                                    "See who has a similar mind.",
                                    style: TextStyle(
                                        fontFamily: 'Proxima',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xffE5E5E5)),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    decoration: BoxDecoration(
                                      color: const Color(
                                          0xff020202), // Background color
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: const Color(
                                            0xff8B88EF), // Border color
                                        width: 2, // Border width
                                      ),
                                    ),
                                    child: IconButton(
                                      icon: Image.asset("assets/icons/mic.png",
                                          color: const Color(0xff8B88EF)),
                                      onPressed: () {
                                        // Add your functionality here
                                      },
                                    ),
                                  ),

                                  const SizedBox(
                                      width: 10), // Space between icons
                                  Container(
                                    height: 48,
                                    width: 48,
                                    decoration: const BoxDecoration(
                                      color:
                                          Color(0xff8B88EF), // Background color
                                      shape: BoxShape.circle,
                                    ),
                                    child: IconButton(
                                      icon: const Icon(Icons.arrow_forward,
                                          color: Color(0xff020202)),
                                      onPressed: () {
                                        // Add your functionality here
                                      },
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.only(bottom: 15.0),
        child: Bottomnav(),
      ),
    );
  }
}
