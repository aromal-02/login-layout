import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons(
      {super.key,
      required this.text,
      required this.textcolor,
      required this.backgroundcolors, required this.width, required this.height});
  final String text;
  final Color textcolor;
  final Color backgroundcolors;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundcolors,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          fixedSize: Size(width, height)),
      
      onPressed: () {},

      child: Text(
        text,
        style: TextStyle(color: textcolor),
      ),
    );
  }
}
