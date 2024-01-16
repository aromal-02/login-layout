import 'package:flutter/material.dart';
import 'package:sample/apps.dart';
import 'package:sample/buttons.dart';
import 'package:sample/checkbox.dart';
import 'package:sample/email.dart';
import 'package:sample/outline.dart';
import 'package:sample/password.dart';

class Desktop extends StatelessWidget {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/logo2.png",
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Travalizer",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Artificial Intelligence giving you travel\nrecommendation",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  // Text("recommendations",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Welcome Back,Please login to your account",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text("EMAIL"),
                  EmailTextfield(hindtext: "robert.langster@gmail.com"),

                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Password",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
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
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                decoration: TextDecoration.underline),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  const Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Buttons(
                          text: "Login",
                          textcolor: Colors.white,
                          backgroundcolors: Color.fromARGB(255, 29, 151, 5),
                          width: 300,
                          height: 40),
                      SizedBox(
                        width: 20,
                      ),
                      Outline(name: "Sign Up", width: 300, height: 40)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Or, login with"),
                      Apps(name: "Facebook"),
                      Apps(name: "Linked In"),
                      Apps(name: "Google")
                    ],
                  )
                ])),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/Frame 21.png",
                    ),
                    fit: BoxFit.cover)),
          ),
        )
      ]),
    );
  }
}
