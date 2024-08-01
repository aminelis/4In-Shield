import 'package:flutter/material.dart';
import 'package:smart_conseil_app/utils/route/route_constant.dart';

class SignIn2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              left: (MediaQuery.of(context).size.width - 81) / 2,
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
                width: 310,
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
            // Champ de texte pour le nom d'utilisateur
            Positioned(
              left: 40,
              top: 308, // Ajustement de la position
              child: Container(
                width: 310,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 16),
                          hintText: 'Username', // Placeholder
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Champ de texte pour le mot de passe
            Positioned(
              left: 40,
              top: 400, // Ajustement de la position
              child: Container(
                width: 310,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 16),
                          hintText: 'Password', // Placeholder
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Bouton de connexion
            Positioned(
              left: (MediaQuery.of(context).size.width - 111) / 2,
              top: 535,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AllRoutesConstant.SignIn3).catchError((error) {
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
                  mainAxisAlignment: MainAxisAlignment.end,
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
              top: 612,
              child: TextButton(
                onPressed: () {
                  // Action pour récupérer le mot de passe
                  print("Forgot password button pressed");
                },
                child: Text(
                  'Forgot password?',
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
              left: (MediaQuery.of(context).size.width - 150) / 2,
              top: MediaQuery.of(context).size.height - 34,
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
