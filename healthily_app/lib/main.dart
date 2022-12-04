import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
import 'components/login_button.dart';
import 'components/input_field.dart';
import 'components/title_text.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TitleText(label: "Log In", clr: clrDarkRed, fntSize: titleFontSize),
            const SizedBox(height: 30),
            const InputField(label: 'username'),
            const SizedBox(height: 15),
            const InputField(label: 'password'),
            const SizedBox(height: 15),
            LoginButton(label: "LOG IN", clr: clrLightRed, onPress: (){}, icon: const SizedBox(height: 0)),
            const SizedBox(height: 15),
            LoginButton(label: " FACEBOOK", clr: clrCyanBlue, onPress: (){}, icon: loginFacebookIcon),
            const SizedBox(height: 15),
            LoginButton(label: "  CONTINUE WITH GOOGLE", clr: clrWhite, onPress: (){}, icon: loginGoogleIcon)
          ],
        ),
      ),
    );
  }
}
