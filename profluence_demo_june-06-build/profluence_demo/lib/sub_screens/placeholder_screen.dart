import 'package:flutter/material.dart';

import '../widgets in place/widgets.dart';

class PlaceholderScreen extends StatefulWidget {
  const PlaceholderScreen({super.key});

  @override
  State<PlaceholderScreen> createState() => _PlaceholderScreenState();
}

class _PlaceholderScreenState extends State<PlaceholderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Wrap(
          children: <Widget>[
            logo("assets/images/circle.png"),
            const SizedBox(
              height: 20,
            ),
            const Text("This is a PlaceHolder page just in case.")
          ],
        ),
      ),
    );
  }
}
