import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:profluence_demo/navigation_screens/login_screen.dart';

void main() async {
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyCYWa2kmH_IdzxPhyitz6zOmod9rOcaIFE",
    appId: "1:191173648949:android:599954d60237bd66dc477c",
    messagingSenderId: "191173648949",
    projectId: "profluence-social",
  ));
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ProFluence Prototype',
      theme: ThemeData(primaryColor: const Color.fromRGBO(43, 176, 186, 2)),
      home: const LoginScreen(),
    );
  }
}
