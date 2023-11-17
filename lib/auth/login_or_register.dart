import 'package:flutter/material.dart';
import 'package:unihack/login_page.dart';

import '../components/register_page.dart';

class LoginOrRegister extends StatefulWidget{
  const LoginOrRegister({Key? key});

  @override
  _LoginOrRegisterState createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  //initially, show the login page
  bool showLoginPage = true;

  //toggle between login and register page
  void togglePage() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglePage);
    } else {
      return RegisterPage(onTap: togglePage);
    }
  }
}