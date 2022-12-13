import 'package:flutter/material.dart';
import 'package:healthily_app/components/title_text.dart';
import 'package:healthily_app/constants.dart';

class DietTags extends StatefulWidget {
    const DietTags({super.key,  required this.label, required this.icon,  required this.onPress, required this.bIcon, required this.isClicked});

  final Function() onPress;
  final String label;
  final Widget icon;
  final Widget bIcon;
  final bool isClicked;

  @override
  State<DietTags> createState() => _DietTagsState();
}

class _DietTagsState extends State<DietTags> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
        ),
        onPressed: widget.onPress,
        child: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Column(
            children: [
              widget.isClicked ? widget.icon : widget.bIcon,
              const SizedBox(height: 15,),
              TitleText(label: widget.label, clr: clrBlack, fntSize: 20)
            ],
          ),
        ),
      )
    );
  }
}