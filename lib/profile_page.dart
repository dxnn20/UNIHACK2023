import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unihack/components/drawer.dart';

class ProfilePage extends StatefulWidget {
  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage>{

@override

Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Profile'),
    ),
    drawer: AppDrawer(),

    body: const Center(
      child: Text(
        'Profile Page',
        style: TextStyle(fontSize: 24),
      ),
    ),
  );
  }
}