import 'package:flutter/material.dart';

class Passwordfield extends StatelessWidget {
  const Passwordfield({super.key, required this.icon, required this.hindtext});
  final Icon icon;
  final String hindtext;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: hindtext,
        suffixIcon: icon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
