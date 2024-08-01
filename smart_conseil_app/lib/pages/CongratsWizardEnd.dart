import 'package:flutter/material.dart';
import 'package:smart_conseil_app/utils/route/route_constant.dart';

class CongratsWizardEnd extends StatelessWidget {
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
              top: 285, // Ajuster la hauteur de l'image
              child: Container(
                width: 110, // Largeur de l'image
                height: 110, // Hauteur de l'image
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Vector.png'), // Remplacez par le chemin de votre image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 30, // Ajuster la largeur de l'image
              top: 420, // Ajuster la hauteur de l'image
              child: Container(
                width: 340, // Largeur de l'image
                height: 240, // Hauteur de l'image
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Cloud.png'), // Remplacez par le chemin de votre image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 40, // Ajuster la largeur de l'image
              top: 420, // Ajuster la hauteur de l'image
              child: Container(
                width: 240, // Largeur de l'image
                height: 200, // Hauteur de l'image
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Chatting2.png'), // Remplacez par le chemin de votre image
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
                    'Congradulation!\n',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontFamily: 'Poppins', // Utilisation de Poppins pour la cohérence
                      fontWeight: FontWeight.w700,
                      height: 1.2,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 22,
              top: 190,
              child: SizedBox(
                width: 346,
                child: Opacity(
                  opacity: 0.86,
                  child: Text(
                    'You have successfully completed you child profile.',
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
              bottom: 70,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
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
                          'Add another child',
                          style: TextStyle(
                            color: Color(0xFF3F77B6), // Couleur du texte
                            fontSize: 15,
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
                      Navigator.pushNamed(context, AllRoutesConstant.GoDashboard).catchError((error) {
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
