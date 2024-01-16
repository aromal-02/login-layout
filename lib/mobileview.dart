import 'package:flutter/material.dart';
import 'package:sample/apps.dart';
import 'package:sample/buttons.dart';
import 'package:sample/checkbox.dart';
import 'package:sample/email.dart';
import 'package:sample/outline.dart';
import 'package:sample/password.dart';

class Phoneview extends StatelessWidget {
  const Phoneview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: const Color.fromARGB(255, 1, 106, 46),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/Logo.png",
              // width: 150,
              // height: 150,
            ),
            SizedBox(
              width: 10,
            ),
            const Text(
              "Travalizer",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/Frame 21.png",
              width: MediaQuery.of(context).size.width,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text(
                  "Artificial Intelligence giving you travel recommendation",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Welcome Back,Please login to your account",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                EmailTextfield(hindtext: "robert.langster@gmail.com"),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Password",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Passwordfield(
                    icon: Icon(Icons.visibility_off), hindtext: "password"),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const checkbox(),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot password?",
                          style: TextStyle(fontSize: 15, color: Colors.black,decoration:TextDecoration.underline),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Buttons(
                      width: 160,
                      height: 40,
                        text: "Login",
                        textcolor: Colors.white,
                        backgroundcolors: Color.fromARGB(255, 29, 151, 5)),
                        SizedBox(width: 20,),
                   Outline( name: "Sign Up", width: 160, height: 40)
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text("Or, login with"),
                ),
                // const SizedBox(
                //   height: 20,
                // ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Apps(name: "Facebook"),
                      Apps(name: "Linked in"),
                      Apps(name: "Google")
                    ],
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
