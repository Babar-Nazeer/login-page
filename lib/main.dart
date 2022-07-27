import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Column(children: [
            const Padding(
              padding: (EdgeInsets.only(top: 30)),
              child: Center(
                child: Text(
                  "Log in to BelajarYuk.",
                  style: TextStyle(fontFamily: 'Roboto Black', fontSize: 25),
                ),
              ),
            ),
            const Padding(
              padding: (EdgeInsets.only(top: 30)),
              child: Center(
                  child: Text(
                'Welcome back!login with your data\nthat you entered   during registration',
                style:
                    TextStyle(color: Colors.grey, fontFamily: 'Roboto Regular'),
              )),
            ),
            Padding(
              padding:
                  (const EdgeInsets.symmetric(horizontal: 10, vertical: 20)),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 7.0, // soften the shadow

                          offset: Offset(
                            3, // Move to right 10  horizontally
                            3, // Move to bottom 10 Vertically
                          ),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  height: 35,
                  width: 240,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/google.png',
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const Text(
                        'login with google',
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'Roboto Medium'),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 7.0, // soften the shadow

                    offset: Offset(
                      3, // Move to right 10  horizontally
                      2, // Move to bottom 10 Vertically
                    ),
                  )
                ], color: Colors.white, borderRadius: BorderRadius.circular(5)),
                height: 35,
                width: 240,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.facebook,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'login with facebook',
                      style: TextStyle(
                          color: Colors.black, fontFamily: 'Roboto Medium'),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: (const EdgeInsets.only(top: 20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      indent: 60.0,
                      endIndent: 10.0,
                      thickness: 1,
                    ),
                  ),
                  Text(
                    "OR",
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      indent: 10.0,
                      endIndent: 60.0,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  (const EdgeInsets.symmetric(horizontal: 55, vertical: 15)),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: const TextStyle(
                        fontFamily: "Roboto Regular",
                        fontSize: 12,
                        color: Colors.grey),
                    fillColor: const Color(0xffFBF9FA),
                    filled: true,
                    suffixIcon: const Icon(
                      Icons.email,
                      color: Colors.purple,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: (const EdgeInsets.symmetric(horizontal: 55)),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "password",
                      hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontFamily: 'Roboto Regular'),
                      fillColor: const Color(0xffFBF9FA),
                      filled: true,
                      suffixIcon: const Icon(
                        Icons.lock,
                        color: Colors.purple,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ),
            Padding(
              padding: (const EdgeInsets.only(left: 50, top: 10)),
              child: Row(
                children: const [
                  Checkbox(value: false, onChanged: null),
                  Text(
                    "Remember me",
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    'Forget your password?',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontFamily: 'Roboto Medium',
                        fontSize: 10),
                  ),
                ],
              ),
            ),
            Padding(
              padding: (const EdgeInsets.only(top: 20)),
              child: Center(
                child: Container(
                  width: 240,
                  height: 40,
                  color: Colors.purple,
                  child: const Center(
                    child: Text(
                      "Login ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Roboto Regular'),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Dont have an account?',
                      style: TextStyle(
                          color: Colors.grey, fontFamily: 'Roboto Regular'),
                    ),
                    Text(
                      "Register",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: 'Roboto Medium',
                          fontSize: 12),
                    )
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}
