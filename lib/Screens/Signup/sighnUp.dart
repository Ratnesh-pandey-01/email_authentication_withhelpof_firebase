import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:first/Screens/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class SighnUp extends StatefulWidget {
  const SighnUp({super.key});

  @override
  State<SighnUp> createState() => _SighnUpState();
}

class _SighnUpState extends State<SighnUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiHelper.CustomTextFeild(emailController, "Enter Email", Icons.email),
          UiHelper.CustomTextFeild(
            passwordController,
            "Enter Password",
            Icons.password,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              SighnUp(
                email: emailController.text.toString(),
                password: passwordController.text.toString(),
              );
            },
            child: Text("Sign Up"),
          ),
        ],
      ),
    );
  }

  SighnUp({required String email, required String password}) async {
    if (email == "" || password == "") {
      return print("Enter required feilds");
    } else {
      UserCredential? userCredential;
      try {
        userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password)
            .then((value) {
              print("user created");
            });
      } on FirebaseAuthException catch (ex) {
        print(ex.code.toString());
      }
    }
  }
}
