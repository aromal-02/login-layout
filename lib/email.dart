import 'package:flutter/material.dart';

class EmailTextfield extends StatelessWidget {
  EmailTextfield({
    super.key, required this.hindtext,
  });
  // final String icon;
  final String hindtext;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hindtext,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
