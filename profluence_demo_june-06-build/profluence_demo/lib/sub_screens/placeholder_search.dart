import 'package:flutter/material.dart';

import '../widgets in place/widgets.dart';

class PlaceholderSearchScreen extends StatefulWidget {
  const PlaceholderSearchScreen({super.key});

  @override
  State<PlaceholderSearchScreen> createState() => _PlaceholderSearchScreenState();
}

class _PlaceholderSearchScreenState extends State<PlaceholderSearchScreen> {
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
            const Text("This is a PlaceHolder Search page just in case.")
          ],
        ),
      ),
    );
  }
}
