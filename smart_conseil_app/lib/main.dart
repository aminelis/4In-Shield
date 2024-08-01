import 'package:flutter/material.dart';
import 'package:smart_conseil_app/pages/main_home.dart';
import 'package:smart_conseil_app/utils/route/routes.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final visitedGettingStartedPageOnceBool =
      prefs.getBool('visitedGettingStartedPageOnce') ?? false; // If it's null, i.e., first time, then set to false

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learn',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system, // Use system theme mode
      home: MainHome(), // Directly set MainHome as the home page
      onGenerateRoute: Routers.generateRoute,
    );
  }
}
