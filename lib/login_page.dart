import 'package:flutter/material.dart';
import 'package:unihack/main.dart';
// Assuming you have a main_page.dart file

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Welcome!',
            style: TextStyle(
              fontSize: 80,
              fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Padding(padding: EdgeInsets.all(20)),
            ElevatedButton(
              onPressed: () {
                // Navigate to the main page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Main Page',)),
                );
              },
              child: const Text('Go to Main Page'),
            ),
          ],
        ),
      ),
    );
  }
}