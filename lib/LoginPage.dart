import 'package:flutter/material.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        top: true,
        child: Scaffold(
            //singleChildScrollView mainly used to hide overlay error on flutter on bottom of the screen while use column
            body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 40),
                child: Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
              Container(
                width: 150,
                height: 150,
                margin: EdgeInsets.only(top: 50),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/user.png'),
                      radius: 50,
                    )),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 50),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User name',
                    hintText: 'User name',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 50),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Password',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, right: 20),
                alignment: Alignment.centerRight,
                child: Text(
                  'Forget Password',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0.0, right: 0.0),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.red,
                  child: Text("Search"),
                  onPressed: () {},
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, right: 20),
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text("Don't have an account?"),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: GestureDetector(
                          child: Text(
                            'Signup Here',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, "/signuppage");
                          },
                        ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Text(
                  'Skip for now>',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
