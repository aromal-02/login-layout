import 'package:flutter/material.dart';
import 'package:sample/desktop.dart';
import 'package:sample/mobileview.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth < 800) {
          return Phoneview();
        } else {
          return Desktop();
        }
      },
    ));
  }
}
