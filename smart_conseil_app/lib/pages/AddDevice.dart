import 'package:flutter/material.dart';
import 'package:smart_conseil_app/utils/route/route_constant.dart';

class Adddevice extends StatelessWidget {
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
            Positioned(
              left: 120, // Ajuster la largeur de l'image
              top: 520, // Ajuster la hauteur de l'image
              child: Container(
                width: 150, // Largeur de l'image
                height: 150, // Hauteur de l'image
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/frame.png'), // Remplacez par le chemin de votre image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // Texte de l'instruction
            Positioned(
              left: 22,
              top: 130,
              child: SizedBox(
                width: 346,
                child: Opacity(
                  opacity: 0.86,
                  child: Text(
                    'Please add your child’s devices',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
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
              top: 220,
              child: SizedBox(
                width: 346,
                child: Opacity(
                  opacity: 0.86,
                  child: Text(
                    'The information from your child’s device will help us to assess their mental health, duration of sleep, places visited, used applications etc.\nIt also gives you the ability to block or allow installed applications',
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
            // Étapes à suivre
            Positioned(
              left: 22,
              top: 340,
              child: SizedBox(
                width: 346,
                child: Opacity(
                  opacity: 0.86,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Please follow the following steps: \n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Poppins', // Utilisation de Poppins pour la cohérence
                            fontWeight: FontWeight.w400,
                            height: 1.6,
                          ),
                        ),
                        TextSpan(
                          text: '1.Bring your child’s mobile phone\n2.Scan this QR code with your child’s device camera\n3.You will be redirected to the 4IN shield application download page\n4.Once the application is installed, click Next',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Poppins', // Utilisation de Poppins pour la cohérence
                            fontWeight: FontWeight.w400,
                            height: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Boutons Skip et Next
            Positioned(
              left: (screenWidth - 250) / 2, // Centre les boutons horizontalement
              bottom: 70,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AllRoutesConstant.Bienvenu).catchError((error) {
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
}
