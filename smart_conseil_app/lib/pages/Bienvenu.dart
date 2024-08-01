import 'package:flutter/material.dart';
import 'package:smart_conseil_app/utils/route/route_constant.dart';

class Bienvenu extends StatelessWidget {
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
            // Texte de bienvenue
            Positioned(
              left: 40,
              top: 165,
              child: SizedBox(
                width: 310,
                child: Text(
                  'Welcome to 4In Shield',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'Abel',
                    fontWeight: FontWeight.w400,
                    height: 1.5, // Correction de la hauteur de ligne
                  ),
                ),
              ),
            ),
            // Image au centre
            Positioned(
              left: 0, // Ajuster la largeur de l'image
              top: (screenHeight - 250) / 2, // Ajuster la hauteur de l'image
              child: Container(
                width: 390, // Largeur de l'image
                height: 250, // Hauteur de l'image
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Chatting.png'), // Remplacez par le chemin de votre image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // Bouton de start
            Positioned(
              left: (screenWidth - 111) / 2,
              top: 600,
              child: ElevatedButton(
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
                  minimumSize: Size(111, 50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center alignment
                  children: [
                    Text(
                      'Start',
                      style: TextStyle(
                        color: Color(0xFF3F77B6), // Couleur du texte
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: 8), // Espacement entre l'icône et le texte
                    Icon(
                      Icons.navigate_next, // Icône à ajouter
                      color: Color(0xFF3F77B6), // Couleur de l'icône
                    ),
                  ],
                ),
              ),
            ),
            // Indicateur en bas de l'écran
            Positioned(
              left: (screenWidth - 150) / 2,
              bottom: 34,
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
}
