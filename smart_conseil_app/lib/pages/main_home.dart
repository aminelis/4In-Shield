import 'package:flutter/material.dart';
import 'package:smart_conseil_app/utils/route/route_constant.dart';

class MainHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    color: Color(0xFF3F63A9),
                  ),
                ),
                Positioned(
                  left: 54,
                  top: 205,
                  child: Opacity(
                    opacity: 0.86,
                    child: SizedBox(
                      width: 300, // Explicit width for debugging
                      child: Text(
                        'Welcome to 4In Shield!\nSign in to continue',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: 'Abel',
                          fontWeight: FontWeight.w400,
                          height: 1.2,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 40,
                  top: 335,
                  child: SizedBox(
                    width: 310, // Explicit width for debugging
                    height: 50, // Explicit height for debugging
                    child: _buildSignInButton(
                      'Sign in with Email',
                      'assets/images/icon-mail-png-transparent-background-mail-logo.png',
                          () {
                            Navigator.pushNamed(context, AllRoutesConstant.SignIn2).catchError((error) {
                              print('Navigation error: $error');
                            });
                      },
                    ),
                  ),
                ),
                Positioned(
                  left: 40,
                  top: 411,
                  child: SizedBox(
                    width: 310, // Explicit width for debugging
                    height: 50, // Explicit height for debugging
                    child: _buildSignInButton(
                      'Sign in with Gmail',
                      'assets/images/google-logo.png',
                          () {
                            Navigator.pushNamed(context, AllRoutesConstant.SignIn2).catchError((error) {
                              print('Navigation error: $error');
                            });

                          },
                    ),
                  ),
                ),
                Positioned(
                  left: 40,
                  top: 487,
                  child: SizedBox(
                    width: 310, // Explicit width for debugging
                    height: 50, // Explicit height for debugging
                    child: _buildSignInButton(
                      'Sign in with Facebook',
                      'assets/images/facebook-logo.png',
                          () {
                            Navigator.pushNamed(context, AllRoutesConstant.SignIn2).catchError((error) {
                              print('Navigation error: $error');
                            });
                          },
                    ),
                  ),
                ),
                Positioned(
                  left: 54,
                  top: 578,
                  child: SizedBox(
                    width: 200, // Explicit width for debugging
                    child: Opacity(
                      opacity: 0.86,
                      child: Text(
                        'No account? Sign up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Abel',
                          fontWeight: FontWeight.w400,
                          height: 1.2,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 54,
                  top: 605,
                  child: Container(
                    width: 139,
                    height: 2,
                    color: Colors.white.withOpacity(0.15),
                  ),
                ),
                Positioned(
                  left: 154,
                  top: 57,
                  child: _buildLogo(81, 'assets/images/MicrosoftTeams-image.png'),
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width, // Use MediaQuery for full width
                    height: 34,
                    color: Colors.black.withOpacity(0.21),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignInButton(String text, String iconPath, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 310,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 13,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Row(
          children: [
            SizedBox(width: 20),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      color: Color(0xFF3F77B6),
                      fontSize: 18,
                      fontFamily: 'Abel',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Image.asset(iconPath, width: 24, height: 24),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.navigate_next,
                size: 25,
                color: Color(0xFF3F77B6),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLogo(double size, String assetName) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(assetName),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
