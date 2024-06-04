import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Wrap(
                children: [
                  //Sized Box is on the Top squared?
                  SizedBox(
                    height: 90,
                    width: 90,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child:
                            const Image(image: AssetImage('icons/circle.png'))),
                  ),
                  const SizedBox(height: 30),
                  const Text("Heading"),
                  //const Text(profileHeading),
                  const SizedBox(height: 60),
                  const Text("SubHeading"),
                  //const Text(profileSubHeading),
                  const SizedBox(height: 80),

                  const SizedBox(
                    width: 200,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//leading: IconButton(onPressed: () {
// Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));},
// icon: const Icon(CupertinoIcons.back)
