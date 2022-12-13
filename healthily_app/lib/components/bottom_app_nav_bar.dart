import 'package:flutter/material.dart';

import '../constants.dart';

class BottomAppNavBar extends StatelessWidget {
  const BottomAppNavBar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: clrLightRed,
      child: TabBar(
        controller: controller,
        indicatorWeight: 5,
        indicatorColor: clrWhite,
        unselectedLabelColor: Colors.grey,
        labelColor: Colors.white,
        onTap: (index) {},
        tabs: [
          Tab(
            icon: Image.asset(
            "assets/account.png",
            width: 30,
            height: 30,
          )),
          Tab(
            icon: Image.asset(
            "assets/home.png",
            width: 30,
            height: 30,
          )),
          Tab(
            icon: Image.asset(
            "assets/heart.png",
            width: 30,
            height: 30,
          )),
          Tab(
            icon: Image.asset(
            "assets/settings.png",
            width: 30,
            height: 30,
          )),
        ],
      ),
    );
  }
}
