import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Center(child: Text("Settings", textAlign: TextAlign.justify,
        ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Wrap(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Text("Version: 0.1"),
          ],
        ),
      ),
    );
  }
}
