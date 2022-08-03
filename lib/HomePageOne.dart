import 'package:flutter/material.dart';

void main() {
  runApp(HomePageOne());
}

class HomePageOne extends StatefulWidget {
  const HomePageOne({Key? key}) : super(key: key);

  @override
  State<HomePageOne> createState() => _HomePageOneState();
}

class _HomePageOneState extends State<HomePageOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.yellow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              'Home',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 250),
            height: 300,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadiusDirectional.circular(20.0)),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100),
                  width: 100,
                  height: 30,
                  alignment: Alignment.center,
                  child: GestureDetector(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: 100,
                  height: 30,
                  alignment: Alignment.center,
                  child: GestureDetector(
                    child: Text(
                      'Signup',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      goToSignup(context);
                    },
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),

          // Container(
          //   child: Text(
          //     'Home',
          //     style: TextStyle(
          //         fontSize: 20,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.black),
          //   ),
          // )
        ],
      ),
    )));
  }
}

void goToSignup(BuildContext context) {
  Navigator.pushNamed(context, '/signupone');
}

void GoToLogin(BuildContext context) {
  Navigator.pushNamed(context, '/login');
}
