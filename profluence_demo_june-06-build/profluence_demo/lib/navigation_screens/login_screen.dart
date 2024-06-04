import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:profluence_demo/navigation_screens/home_screen.dart';
import 'package:profluence_demo/navigation_screens/signup_screen.dart';
import 'package:profluence_demo/widgets%20in%20place/widgets.dart';
import 'package:profluence_demo/widgets in place/hexcolor.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("2BB0BA"),
          hexStringToColor("256DA1"),
        ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.1, 20, 0),
            child: Column(
              children: <Widget>[
                logo("assets/images/circle.png"),
                const SizedBox(
                  height: 20,
                ),
                repTextField(
                    "Username", Icons.person, false, _emailTextController),
                const SizedBox(
                  height: 30,
                ),
                repTextField(
                    "Password", Icons.lock_rounded, true, _passwordTextController),
                const SizedBox(
                  height: 30,
                ),
                signInSignUpButton(context, true, () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  });
                }),
                const SizedBox(
                  height: 30,
                ),
                signUpDescription(),
                signInSignUpButton(context, false, () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()));
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
