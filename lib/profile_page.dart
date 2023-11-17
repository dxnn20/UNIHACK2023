import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unihack/components/drawer.dart';
import 'package:unihack/main.dart';

class ProfilePage extends StatefulWidget {

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: AppDrawer(),

      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child:
              const CircleAvatar(
                radius: 100.0,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'HELP ME',
              style: const TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'HELP ME',
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16.0),
            // Add more profile information or customization as needed
          ],
        ),
      ),
    );
  }
}