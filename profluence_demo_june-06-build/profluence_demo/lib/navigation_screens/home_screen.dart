import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:profluence_demo/navigation_screens/login_screen.dart';
import 'package:profluence_demo/navigation_screens/settings_screen.dart';
import 'package:profluence_demo/sub_screens/profile_screen.dart';

import '../sub_screens/placeholder_create.dart';
import '../sub_screens/placeholder_screen.dart';
import '../sub_screens/placeholder_search.dart';



//import '../widgets in place/upload_remote.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _pageIndex = 1;
  final List<Widget> _pages = [
    const PlaceholderScreen(),
    const PlaceholderCreateScreen(),
    const PlaceholderSearchScreen(),
    const ProfileScreen(),
  ];

  //Link: https://appmaking.com/flutter-drawer-example/ and https://www.reddit.com/r/flutterhelp/comments/tg34cy/how_to_render_image_from_firebase_without/

  @override
  Widget build(BuildContext context) {
    return PopScope(
        child: Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.transparent,
          title: const Center(),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.cyan,
                ),
                child: Text('Username - Developer'),
              ),
              const UserAccountsDrawerHeader(
                  accountName: Text("Profile Name"),
                  accountEmail: Text("Profile Email"),
              currentAccountPicture: CircleAvatar(backgroundColor: Colors.white,),),
              ListTile(
                leading: const Icon(CupertinoIcons.profile_circled),
                title: const Text('Profile'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen())); //ProfileScreen()));
                },
              ),
              ListTile(
                leading:  const Icon(CupertinoIcons.settings),
                title:  const Text('Settings'),
                onTap: () {
                  Navigator.push((context), MaterialPageRoute(builder: (context) => const SettingsScreen()));
                },
              ),
              const Padding(padding: EdgeInsets.all(30)),
              ListTile(
                title: const Text('Sign Out'),
                onTap: () {
                  FirebaseAuth.instance.signOut();
                    ("You have signed out of your account");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()));
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: const Text('Create Post'),
          icon: const Icon(CupertinoIcons.add_circled),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const PlaceholderCreateScreen()));
            //Navigator.push(context, MaterialPageRoute(builder: (context) => const UploadRemoteImageForm()));
          },
        ),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _pageIndex,
          onTap: (value){
            setState(() {
              _pageIndex = value;
            });
          },
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.cyan,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.profile_circled), label: 'Profile'),
          ],
        ),
      body: _pages[_pageIndex],
        ),
    );
  }
}
