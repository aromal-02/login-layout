import 'package:flutter/material.dart';

class Outline extends StatelessWidget {
  const Outline( {super.key, required this.name, required this.width, required this.height});
  final String name;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          fixedSize: Size(width ,height),
        ),
        onPressed: () {},
        child: Text(
          name,
          style: TextStyle(color: Colors.green),
        ));
  }
}
