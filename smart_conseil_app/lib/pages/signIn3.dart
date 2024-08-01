import 'package:flutter/material.dart';
import 'package:smart_conseil_app/utils/route/route_constant.dart';

class SignIn3 extends StatelessWidget {
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
            // Logo de l'application
            Positioned(
              left: (screenWidth - 81) / 2,
              top: 57,
              child: Container(
                width: 81,
                height: 85,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/MicrosoftTeams-image.png"), // Chemin de votre logo
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            // Texte de bienvenue
            Positioned(
              left: 40,
              top: 205,
              child: SizedBox(
                width: screenWidth - 80,
                child: Text(
                  'Welcome to 4In Shield!\nSign in to continue',
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
            // Champs de texte
            Positioned(
              left: 40,
              top: 308,
              child: _buildTextField(context, 'Username'),
            ),
            Positioned(
              left: 40,
              top: 380,
              child: _buildTextField(context, 'Email'),
            ),
            Positioned(
              left: 40,
              top: 452,
              child: _buildTextField(context, 'Password', obscureText: true),
            ),
            Positioned(
              left: 40,
              top: 524,
              child: _buildTextField(context, 'Confirm your password', obscureText: true),
            ),
            // Bouton de connexion
            Positioned(
              left: (screenWidth - 111) / 2,
              top: 600,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AllRoutesConstant.SpaceChoose).catchError((error) {
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
                  mainAxisAlignment: MainAxisAlignment.center, // Centered alignment
                  children: [
                    Text(
                      'Sign in',
                      style: TextStyle(
                        color: Color(0xFF3F77B6), // Couleur du texte
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: 8), // Espacement entre le texte et l'icône
                    Icon(
                      Icons.navigate_next, // Remplacez par l'icône souhaitée
                      color: Color(0xFF3F77B6), // Couleur de l'icône
                    ),
                  ],
                ),
              ),
            ),
            // Lien "Forgot password?"
            Positioned(
              left: 48,
              top: 672,
              child: TextButton(
                onPressed: () {
                  // Action pour récupérer le mot de passe
                },
                child: Text(
                  'I hereby accept terms and conditions',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Abel',
                  ),
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
