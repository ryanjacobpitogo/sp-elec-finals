import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthily_app/screens/diet_details_page/diet_details_screen.dart';
import 'package:healthily_app/screens/login_page/login_screen.dart';
import 'constants.dart';
import 'screens/home_page/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //routes
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the LoginPage widget.
        '/': (context) => const LoginScreen(),
        // When navigating to the "/second" route, build the HomePage widget.
        '/DietDetails': (context) => const DietDetailsScreen(),
        '/Home': (context) => const HomeScreen(),
      },
      theme: ThemeData(
        //Default color scheme for most widgets
        colorScheme: const ColorScheme.light().copyWith(primary: clrMainRed),
        //Default font family
        fontFamily: GoogleFonts.comfortaa().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

