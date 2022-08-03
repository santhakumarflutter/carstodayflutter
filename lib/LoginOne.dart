import 'package:flutter/material.dart';

void main() {
  runApp(LoginOne());
}

class LoginOne extends StatefulWidget {
  const LoginOne({Key? key}) : super(key: key);

  @override
  State<LoginOne> createState() => _LoginOneState();
}

class _LoginOneState extends State<LoginOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          Container(
            child: Text(
              'Login Page',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          )
        ],
      ),
    ));
  }
}
