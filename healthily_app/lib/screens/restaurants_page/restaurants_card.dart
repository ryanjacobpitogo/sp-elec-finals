// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'restaurants_modal.dart';

class ResCard extends StatefulWidget {
  const ResCard(
      {super.key,
      required this.label,
      required this.image,
      required this.name});

  final NetworkImage image;
  final String label;
  final String name;

  @override
  @override
  State<ResCard> createState() => _ResCard();
}

class _ResCard extends State<ResCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
      child: GestureDetector(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: widget.image,
                        fit: BoxFit.cover), // button text
                  ),
                 
                ),
                Positioned(
                  left: -40,
                  top: -85,
                  child: Image.asset(
                    "assets/bg-overlay.png",
                    width: 435,
                    height: 355,
                  )),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                      padding: const EdgeInsets.only(top: 125.0, right: 10),
                      child: Text(
                        widget.label,
                        style: const TextStyle(color: Colors.white, fontSize: 20),
                        textAlign: TextAlign.end,
                      ),
                    ),
                ),
              ],
            ),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Resview(
                      label: widget.label,
                      image: widget.image,
                      name: widget.name,
                    )));
          }),
    );
  }
}
