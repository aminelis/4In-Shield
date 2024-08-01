import 'package:flutter/material.dart';
import 'package:smart_conseil_app/utils/route/route_constant.dart';

class ConfirmProfile extends StatelessWidget {
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
            Positioned(
              left: 160, // Ajuster la largeur de l'image
              top: 265, // Ajuster la hauteur de l'image
              child: Container(
                width: 130, // Largeur de l'image
                height: 130, // Hauteur de l'image
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Vector.png'), // Remplacez par le chemin de votre image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 60, // Ajuster la largeur de l'image
              top: 400, // Ajuster la hauteur de l'image
              child: Container(
                width: 100, // Largeur de l'image
                height: 100, // Hauteur de l'image
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Jaune.png'), // Remplacez par le chemin de votre image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 230, // Ajuster la largeur de l'image
              top: 400, // Ajuster la hauteur de l'image
              child: Container(
                width: 100, // Largeur de l'image
                height: 100, // Hauteur de l'image
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Vert.png'), // Remplacez par le chemin de votre image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 230, // Ajuster la largeur de l'image
              top: 520, // Ajuster la hauteur de l'image
              child: Container(
                width: 100, // Largeur de l'image
                height: 100, // Hauteur de l'image
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Rouge.png'), // Remplacez par le chemin de votre image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 60, // Ajuster la largeur de l'image
              top: 520, // Ajuster la hauteur de l'image
              child: Container(
                width: 100, // Largeur de l'image
                height: 100, // Hauteur de l'image
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Bleu.png'), // Remplacez par le chemin de votre image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 175, // Ajuster la largeur de l'image
              top: 480, // Ajuster la hauteur de l'image
              child: Container(
                width: 100, // Largeur de l'image
                height: 100, // Hauteur de l'image
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Twitter.png'), // Remplacez par le chemin de votre image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 135, // Ajuster la largeur de l'image
              top: 400, // Ajuster la hauteur de l'image
              child: Container(
                width: 120, // Largeur de l'image
                height: 120, // Hauteur de l'image
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/instagram2.png'), // Remplacez par le chemin de votre image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 100, // Ajuster la largeur de l'image
              top: 470, // Ajuster la hauteur de l'image
              child: Container(
                width: 100, // Largeur de l'image
                height: 100, // Hauteur de l'image
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/facebook.png'), // Remplacez par le chemin de votre image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            // Texte de l'instruction
            Positioned(
              left: 22,
              top: 150,
              child: SizedBox(
                width: 346,
                child: Opacity(
                  opacity: 0.86,
                  child: Text(
                    'Your child’s profile information has been successfully added',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontFamily: 'Poppins', // Utilisation de Poppins pour la cohérence
                      fontWeight: FontWeight.w400,
                      height: 1.2,
                    ),
                  ),
                ),
              ),
            ),

            // Boutons Skip et Next
            Positioned(
              left: (screenWidth - 350) / 2, // Centre les boutons horizontalement
              bottom: 120,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AllRoutesConstant.AddProfile).catchError((error) {
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
                          'Add new profile',
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
                  SizedBox(width: 25), // Espace entre les boutons
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AllRoutesConstant.AddChild).catchError((error) {
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
                          'Continue',
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
            Positioned(
              left: (screenWidth - 250) / 2, // Centre les boutons horizontalement
              bottom: 50,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AllRoutesConstant.AddProfile).catchError((error) {
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
                          'Modify profile information',
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
