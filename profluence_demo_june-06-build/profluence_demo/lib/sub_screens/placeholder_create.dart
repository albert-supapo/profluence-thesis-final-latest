import 'package:flutter/material.dart';

import '../widgets in place/widgets.dart';

class PlaceholderCreateScreen extends StatefulWidget {
  const PlaceholderCreateScreen({super.key});

  @override
  State<PlaceholderCreateScreen> createState() => _PlaceholderCreateScreenState();
}

class _PlaceholderCreateScreenState extends State<PlaceholderCreateScreen> {
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
            const Text("This is a PlaceHolder Create Post page just in case.")
          ],
        ),
      ),
    );
  }
}
