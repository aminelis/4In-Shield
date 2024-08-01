import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Pour formater les dates
import 'package:smart_conseil_app/utils/route/route_constant.dart';

class AddChild extends StatefulWidget {
  @override
  _AddChildState createState() => _AddChildState();
}

class _AddChildState extends State<AddChild> {
  final TextEditingController _birthDateController = TextEditingController();
  final DateFormat _dateFormat = DateFormat('yyyy-MM-dd'); // Format de date

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
              left: 180, // Ajuster la largeur de l'image
              top: 70, // Ajuster la hauteur de l'image
              child: Container(
                width: 75, // Largeur de l'image
                height: 75, // Hauteur de l'image
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Rouge1.png'), // Remplacez par le chemin de votre image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 115, // Ajuster la largeur de l'image
              top: 70, // Ajuster la hauteur de l'image
              child: Container(
                width: 75, // Largeur de l'image
                height: 75, // Hauteur de l'image
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Vert1.png'), // Remplacez par le chemin de votre image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 160, // Ajuster la largeur de l'image
              top: 130, // Ajuster la hauteur de l'image
              child: Container(
                width: 60, // Largeur de l'image
                height: 60, // Hauteur de l'image
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Bleu1.png'), // Remplacez par le chemin de votre image
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
                    'Please enter the required information to complete your child’s profile',
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
            Positioned(
              left: 40,
              top: 380,
              child: _buildTextField(context, 'First name'),
            ),
            Positioned(
              left: 40,
              top: 452,
              child: _buildTextField(context, 'Last name'),
            ),
            Positioned(
              left: 40,
              top: 524,
              child: _buildTextField(context, 'Gender'),
            ),
            Positioned(
              left: 40,
              top: 596,
              child: _buildDateField(context),
            ),

            // Boutons Skip et Next
            Positioned(
              left: (screenWidth - 250) / 2, // Centre les boutons horizontalement
              bottom: 100,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
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
                      Navigator.pushNamed(context, AllRoutesConstant.CongratsWizardEnd).catchError((error) {
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

  Widget _buildDateField(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 80,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextField(
          controller: _birthDateController,
          readOnly: true, // Le champ est en lecture seule pour éviter la saisie directe
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 16),
            hintText: 'Birth date', // Placeholder
            suffixIcon: Icon(Icons.calendar_today),
          ),
          onTap: () async {
            DateTime? selectedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
            );

            if (selectedDate != null) {
              setState(() {
                _birthDateController.text = _dateFormat.format(selectedDate);
              });
            }
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _birthDateController.dispose(); // Nettoyage du contrôleur
    super.dispose();
  }
}
