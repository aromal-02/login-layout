import 'package:flutter/material.dart';

class checkbox extends StatefulWidget {
  const checkbox({super.key});

  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  bool? ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
          children: [
            Checkbox(
              activeColor: Color.fromARGB(255, 3, 174, 12),
                value: ischecked,
                onChanged: (newBool) {
                  setState(() {
                    ischecked = newBool;
                  });
                }),
                Text("Remember me",style: TextStyle(color: Color.fromARGB(255, 64, 65, 64),fontSize: 15),)
          ],
        ));
  }
}
