import 'package:flutter/material.dart';
import 'package:smart_conseil_app/widgets/CustomerAppBar.dart';

class PhoneUsageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Parental Control',
        actions: [
          Icon(Icons.person, color: Colors.white),
        ],
      ),
      body: Container(
        color: Color(0xFF3F63A9),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  fillColor: Color(0xFF819DCB),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  SwitchListTile(
                    activeColor: Color(0xFF53F293),
                    title: Row(
                      children: [
                        Image.network(
                          'https://www.google.com/favicon.ico',
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Google Chrome ',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 30),
                        Text(
                          '${true ? "On" : "Off"}',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    value: true,
                    onChanged: (bool value) {
                      // Handle switch state change
                    },
                    secondary: Checkbox(
                      value: true,
                      onChanged: (bool? value) {
                        // Handle checkbox state change
                      },
                    ),
                  ),
                  SwitchListTile(
                    title: Row(
                      children: [
                        Image.network(
                          'https://www.google.com/favicon.ico',
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Camera',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 95),
                        Text(
                          '${false ? "On" : "Off"}',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    value: false,
                    onChanged: (bool value) {
                      // Handle switch state change
                    },
                    secondary: Checkbox(
                      value: false,
                      onChanged: (bool? value) {
                        // Handle checkbox state change
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
