import 'package:flutter/material.dart';

class Apps extends StatelessWidget {
  const Apps({super.key, required this.name});
  final String name;
  

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){}, child: Text(name,style: TextStyle(color: Colors.black),),
    
    
    );
  }
}
