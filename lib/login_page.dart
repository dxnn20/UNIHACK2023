import 'package:flutter/material.dart';
import 'package:unihack/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            const Text('Welcome!',
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(padding: EdgeInsets.all(50)),
            Container(
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.blue),
              ),
            child: const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.black,
                  ),
                ),
                contentPadding: EdgeInsets.all(15.0),
              ),
            ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.blue),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  contentPadding: EdgeInsets.all(15.0),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[100],
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                // Navigate to the main page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Main Page',)),
                );
              },
              child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
              ),
            ),

            Spacer(),
          ],
        ),
      ),
    );
  }
}