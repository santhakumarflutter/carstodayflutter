import 'package:flutter/material.dart';

import 'package:carstodayflutter/LoginPage.dart';
import 'package:carstodayflutter/SignUpPage.dart';
import 'package:carstodayflutter/HomePage.dart';

import 'package:carstodayflutter/HomePageOne.dart';
import 'package:carstodayflutter/LoginOne.dart';
import 'package:carstodayflutter/SignupOne.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       title: 'Named Routes Demo',
//       // Start the app with the "/" named route. In this case, the app starts
//       // on the FirstScreen widget.
//       initialRoute: '/',
//       routes: {
//         // When navigating to the "/" route, build the FirstScreen widget.
//         '/': (context) => LoginPage(),
//         // When navigating to the "/second" route, build the SecondScreen widget.
//         '/homepage': (context) => HomePage(),

//         // When navigating to the "/second" route, build the SecondScreen widget.
//         '/signuppage': (context) => SignUpPage(),
//       },
//       debugShowCheckedModeBanner: false,
//     ),
//   );
// }

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => HomePageOne(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/login': (context) => LoginOne(),

        // When navigating to the "/second" route, build the SecondScreen widget.
        '/signupone': (context) => SignupOne(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}
