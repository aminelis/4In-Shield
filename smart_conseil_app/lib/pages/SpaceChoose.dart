import 'package:flutter/material.dart';
import 'package:smart_conseil_app/utils/route/route_constant.dart';

class SpaceChoose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3F63A9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Question Text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Who is going to use this device?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Abel',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 50),
            // Option for Parents
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AllRoutesConstant.Bienvenu).catchError((error) {
                  print('Navigation error: $error');
                });
                // Action when parent option is selected
              },
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 300,
                    height: 165,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        'Parents',
                        style: TextStyle(
                          color: Color(0xFF3F63A9),
                          fontSize: 24,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  // `Widget2` should be placed before `Widget3`
                  Positioned(
                    top: -38, // Adjust the position to make the image overflow
                    left: 0,
                    child: SizedBox(
                      width: 300,
                      height: 265,
                      child: OverflowBox(
                        maxWidth: 300,
                        maxHeight: 265,
                        child: Image.asset(
                          'assets/images/Widget2.png', // Path to the parent image
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  // `Widget3` will be displayed on top of `Widget2`
                  Positioned(
                    top: -30, // Adjust the position to fit within bounds
                    left: 195,
                    child: SizedBox(
                      width: 105, // Adjusted width
                      height: 130, // Adjusted height
                      child: OverflowBox(
                        maxWidth: 150,
                        maxHeight: 150,
                        child: Image.asset(
                          'assets/images/Widget3.png', // Path to the parent image
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            // Option for Child
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AllRoutesConstant.Bienvenu).catchError((error) {
                  print('Navigation error: $error');
                });
                // Action when child option is selected
              },
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 300,
                    height: 165,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  Positioned(
                    top: -26, // Adjust the position to make the image overflow
                    left: -10,
                    child: SizedBox(
                      width: 340,
                      height: 265,
                      child: OverflowBox(
                        maxWidth: 340,
                        maxHeight: 265,
                        child: Image.asset(
                          'assets/images/Widget1.png', // Path to the child image
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
