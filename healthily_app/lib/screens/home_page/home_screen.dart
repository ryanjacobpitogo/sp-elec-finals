import 'package:flutter/material.dart';

import '../../components/bottom_app_nav_bar.dart';
import '../../components/logo.dart';
import '../../constants.dart';
import 'home_food_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    controller = TabController(length: 4, vsync: this, initialIndex: 1);
    super.initState();
  }

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
            children: <Widget>[
              const SizedBox(height: 60),
              const LogoText(
                  showTxt: true, position: CrossAxisAlignment.center),
              Container(
                constraints: const BoxConstraints(
                  minHeight: 500,
                ),
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                margin: const EdgeInsets.only(top: 20),
                decoration: boxDecorContainer,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 40, 0, 10),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Suggested for you",
                          style: TextStyle(fontSize: 24),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 10, 0, 10),
                      child: Text(
                        "Based on your preference",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    FoodList(),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 10, 0, 10),
                      child: Text(
                        "Editor's Choice",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    FoodList(),
                  ],
                ),
              )
            ],
          )),
        ),
      ),
      bottomNavigationBar: BottomAppNavBar(controller: controller),
    );
  }
}



