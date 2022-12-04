import 'package:flutter/material.dart';
import 'package:healthily_app/components/singular_botm_nav.dart';
import 'package:healthily_app/components/title_text.dart';
import 'package:healthily_app/main.dart';
//import 'package:healthily_app/components/title_text.dart';
import '../../components/logo.dart';
import '../../constants.dart';
// import 'components/login_button.dart';
// import 'components/input_field.dart';
// import 'components/title_text.dart';

class DietDetailsScreen extends StatelessWidget {
  const DietDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: scaffoldBackground,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                const SizedBox(height: 60),
                Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.fromLTRB(20,45,20,1145),
                      margin: const EdgeInsets.only(top: 65),
                      decoration: boxDecorContainer,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(height: 40,),
                          TitleText(label: "Your diet experience", clr: clrBlack, fntSize: 26),
                        ],
                      ),
                    ),
                    const LogoText(showTxt: false, position: CrossAxisAlignment.center),
                  ]
                )
              ],
            )
          ),
        ),
      ),
      bottomNavigationBar: SingularBottomNavigation(text: 'SELECT', onPress: (){}),
    );
  }
}
