import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:healthily_app/components/title_text.dart';
import 'components/logo.dart';
import 'constants.dart';
// import 'components/login_button.dart';
// import 'components/input_field.dart';
// import 'components/title_text.dart';
import 'screens/login_page/login_container.dart';
import 'screens/login_page/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //Default color scheme for most widgets
        colorScheme: const ColorScheme.light().copyWith(primary: clrMainRed),
        //Default font family
        fontFamily: GoogleFonts.comfortaa().fontFamily,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController inputController;

  @override
  Widget build(BuildContext context) {
    return const LoginScreen();
  }
}

