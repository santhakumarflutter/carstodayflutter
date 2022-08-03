import 'package:flutter/material.dart';

void main() {
  runApp(SignUpPage());
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Signup',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.red, fontSize: 20),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_sharp,
                color: Colors.red,
              ),
              tooltip: 'Back button',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/user.png'),
                    radius: 50,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: TextField(
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter mobile no',
                    hintText: 'Enter mobile no',
                  )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0.0, right: 0.0, top: 40),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.red,
                    child: Text('Continue'),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50, right: 20),
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text("Already have an account?"),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          child: GestureDetector(
                            child: Text(
                              'Login Here',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, "/signuppage");
                            },
                          )),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  height: 100,
                  margin: EdgeInsets.only(top: 50),
                  child: Center(
                    child: Image.asset('assets/logo.png'),
                  ),
                )
              ],
            ),
          )),
      debugShowCheckedModeBanner: false,
    );
  }
}
