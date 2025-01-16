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
              top: 70,
              child: SizedBox(
                width: screenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Transform.scale(
                          scaleX: 1.1,
                          child: const Text(
                            'Stroll Bonfire',
                            style: TextStyle(
                              fontFamily: 'Proxima',
                              fontSize: 34,
                              fontWeight: FontWeight.w700,
                              height: 1,
                              color: Color(0xffCCC8FF),
                              shadows: [
                                Shadow(
                                  offset: Offset(0, 0),
                                  blurRadius:
                                      7.9, // Simulates the 7.9px blur radius
                                  color: Color(
                                      0x33000000), // rgba equivalent: #00000033
                                ),
                                Shadow(
                                  offset: Offset(0, 0),
                                  blurRadius:
                                      2.0, // Simulates the 2px blur radius
                                  color: Color(
                                      0xffBEBEBE), // rgba equivalent: #BEBEBE
                                ),
                                Shadow(
                                  offset: Offset(
                                      0, 1), // Horizontal and Vertical position
                                  blurRadius: 2.0, // 2px blur radius
                                  color: Color(
                                      0x8024232F), // rgba equivalent: #24232F80
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
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
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Clock Icon
                        Image.asset(
                          width: 13,
                          height: 15,
                          'assets/icons/clock.png',
                          color: const Color(0xffFFFFFF),
                        ),

                        const SizedBox(width: 3),

                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Transform.scale(
                            scaleX: 1.05,
                            child: const Text(
                              '22h 00m',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffFFFFFF),
                                  fontFamily: 'Proxima',
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),

                        const SizedBox(
                            width: 9.73), // Spacing between time and image

                        // Person Image (Circular image)
                        ClipOval(
                          child: Image.asset(
                            'assets/icons/User.png', // Replace with your image path
                            width: 20, // Image width
                            height: 15, // Image height
                            // fit: BoxFit.cover,
                            color: const Color(0xffFFFFFF),
                          ),
                        ),

                        // Number
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Transform.scale(
                            scaleX: 1.05,
                            child: const Text(
                              '103', // Example number
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffFFFFFF),
                                  fontFamily: 'Proxima',
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
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
                height: screenHeight / 2,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter, // Starts from the bottom
                    end: Alignment.topCenter,
                    stops: [0.6, 1],
                    colors: [
                      Colors.black,
                      Colors.transparent,
                    ],
                  ),
                ),
                child: SizedBox(
                  height: 140,
                  width: screenWidth,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 129,
                        width: screenWidth * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(122, 18, 21, 23),
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
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 40.0, left: 5),
                                  child: Transform.scale(
                                    scaleX: 1.05,
                                    child: const Text(
                                      'Angelina, 28',
                                      style: TextStyle(
                                        fontFamily: 'Proxima',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 11,
                                        color: Color(0xFFF5F5F5),
                                        decoration: TextDecoration.none,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 22.0, top: 9),
                                  child: SizedBox(
                                    width: 247,
                                    height: 45,
                                    child: Transform.scale(
                                      scaleX: 1.1,
                                      child: const Text(
                                        "What is your favorite time of the day?",
                                        style: TextStyle(
                                          fontFamily: 'Proxima',
                                          fontSize: 20,
                                          decorationThickness: 2,
                                          height: 1.1,
                                          fontWeight: FontWeight.w900,
                                          color: Color(0xffF5F5F5),
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Stack(children: [
                        const Center(
                          child: Text(
                              "“Mine is definitely the peace in the morning.”",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromRGBO(203, 201, 255, 0.7),
                                fontFamily: 'Proxima',
                                fontSize: 12,
                                fontStyle: FontStyle.italic,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                          ),
                          child: SizedBox(
                              height: 170,
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
                        )
                      ]),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Transform.scale(
                                  scaleX: 1.05,
                                  child: const Text(
                                    "Pick your option.",
                                    style: TextStyle(
                                        fontFamily: 'Proxima',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xffE5E5E5)),
                                  ),
                                ),
                                Transform.scale(
                                    scaleX: 1.05,
                                    child: const Text(
                                      "See who has a similar mind.",
                                      style: TextStyle(
                                          fontFamily: 'Proxima',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color(0xffE5E5E5)),
                                    ))
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
                                    onPressed: () {},
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
                                    iconSize: 33,
                                    icon: const Icon(Icons.arrow_forward,
                                        color: Color(0xff020202)),
                                    onPressed: () {},
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
          ],
        ),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.only(bottom: 10.0),
        child: Bottomnav(),
      ),
    );
  }
}
