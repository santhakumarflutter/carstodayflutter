import 'package:flutter/material.dart';

void main() {
  runApp(SignupOne());
}

class SignupOne extends StatefulWidget {
  const SignupOne({Key? key}) : super(key: key);

  @override
  State<SignupOne> createState() => _SignupOneState();
}

class _SignupOneState extends State<SignupOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        body: Column(
          children: [
            Container(
              child: Text(
                'Signup Page',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
