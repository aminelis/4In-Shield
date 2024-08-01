import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget> actions;
  final Color backgroundColor;
  final Color iconColor;
  final Color textColor;

  CustomAppBar({
    required this.title,
    this.actions = const [],
    this.backgroundColor = const Color(0xFF3F63A9), // Couleur de fond par défaut
    this.iconColor = Colors.white, // Couleur des icônes par défaut
    this.textColor = Colors.white, // Couleur du texte par défaut
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      leading: Icon(Icons.menu, color: iconColor),
      title: Text(
        title,
        style: TextStyle(color: textColor),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
