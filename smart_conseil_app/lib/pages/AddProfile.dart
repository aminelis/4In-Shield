import 'package:flutter/material.dart';
import 'package:smart_conseil_app/utils/route/route_constant.dart';

class AddProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Color(0xFF3F63A9)), // Couleur de fond principale
        child: Stack(
          children: [
            // Image au centre
            /*Positioned(
              left: 120, // Ajuster la largeur de l'image
              top: 100, // Ajuster la hauteur de l'image
              child: Transform.rotate(
                //angle: 0.5 * 3.1415926535897932, // 90 degrés en radians
                angle: 0.7854,
                child: Container(
                  width: 40, // Largeur de l'image
                  height: 40, // Hauteur de l'image
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/frame.png'), // Remplacez par le chemin de votre image
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),*/


            Positioned(
              left: 120, // Ajuster la largeur de l'image
              top: 100, // Ajuster la hauteur de l'image
              child: Container(
                width: 50, // Largeur de l'image
                height: 50, // Hauteur de l'image
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Jaune.png'), // Remplacez par le chemin de votre image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 210, // Ajuster la largeur de l'image
              top: 100, // Ajuster la hauteur de l'image
              child: Container(
                width: 50, // Largeur de l'image
                height: 50, // Hauteur de l'image
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Vert.png'), // Remplacez par le chemin de votre image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 210, // Ajuster la largeur de l'image
              top: 170, // Ajuster la hauteur de l'image
              child: Container(
                width: 50, // Largeur de l'image
                height: 50, // Hauteur de l'image
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Rouge.png'), // Remplacez par le chemin de votre image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 165, // Ajuster la largeur de l'image
              top: 100, // Ajuster la hauteur de l'image
              child: Container(
                width: 55, // Largeur de l'image
                height: 55, // Hauteur de l'image
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/facebook.png'), // Remplacez par le chemin de votre image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 145, // Ajuster la largeur de l'image
              top: 130, // Ajuster la hauteur de l'image
              child: Container(
                width: 55, // Largeur de l'image
                height: 55, // Hauteur de l'image
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Twitter.png'), // Remplacez par le chemin de votre image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 185, // Ajuster la largeur de l'image
              top: 130, // Ajuster la hauteur de l'image
              child: Container(
                width: 55, // Largeur de l'image
                height: 55, // Hauteur de l'image
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/instagram.png'), // Remplacez par le chemin de votre image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            // Texte de l'instruction
            Positioned(
              left: 22,
              top: 220,
              child: SizedBox(
                width: 346,
                child: Opacity(
                  opacity: 0.86,
                  child: Text(
                    'Please enter your child’s social media account information ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontFamily: 'Poppins', // Utilisation de Poppins pour la cohérence
                      fontWeight: FontWeight.w400,
                      height: 1.2,
                    ),
                  ),
                ),
              ),
            ),
            // Description
            Positioned(
              left: 22,
              top: 290,
              child: SizedBox(
                width: 346,
                child: Opacity(
                  opacity: 0.86,
                  child: Text(
                    'This information will help us to protect your child from online abusive content and cyberharassment',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins', // Utilisation de Poppins pour la cohérence
                      fontWeight: FontWeight.w400,
                      height: 1.4,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 40,
              top: 380,
              child: _buildTextField(context, 'Social network platform (Drop down)'),
            ),
            Positioned(
              left: 40,
              top: 472,
              child: _buildTextField(context, 'Social network user name'),
            ),
            Positioned(
              left: 40,
              top: 554,
              child: _buildTextField(context, 'Social network page URL'),
            ),

            // Boutons Skip et Next
            Positioned(
              left: (screenWidth - 250) / 2, // Centre les boutons horizontalement
              bottom: 120,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AllRoutesConstant.Adddevice).catchError((error) {
                        print('Navigation error: $error');
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Couleur de fond du bouton
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: Size(105, 50),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Skip',
                          style: TextStyle(
                            color: Color(0xFF3F77B6), // Couleur du texte
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 40), // Espace entre les boutons
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AllRoutesConstant.ConfirmProfile).catchError((error) {
                        print('Navigation error: $error');
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Couleur de fond du bouton
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: Size(105, 50),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Next',
                          style: TextStyle(
                            color: Color(0xFF3F77B6), // Couleur du texte
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.navigate_next,
                          color: Color(0xFF3F77B6),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Indicateur en bas de l'écran
            Positioned(
              left: (screenWidth - 150) / 2,
              bottom: 0,
              child: Container(
                width: 150,
                height: 6,
                decoration: ShapeDecoration(
                  color: Color(0x21262626),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildTextField(BuildContext context, String hintText, {bool obscureText = false}) {
    return Container(
      width: MediaQuery.of(context).size.width - 80,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 16),
            hintText: hintText, // Placeholder
          ),
        ),
      ),
    );
  }
}
