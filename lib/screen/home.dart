import 'package:MyApp/screen/register.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // method
  // Show Logos
  Widget showLogo() {
    return Container(
        width: 120, height: 120, child: Image.asset("images/logo.png"));
  }

  // Application name
  Widget showAppName(String name) {
    return Text(
      name,

      style: TextStyle(
        fontSize: 24,
        color: Colors.blue.shade500,
        fontWeight: FontWeight.bold,
//        fontStyle: FontStyle.normal,
//        fontFamily: "EkkamaiNew",
      ),
    );
  }

  // button for sign-in
  Widget signInButton() {
    return RaisedButton(
      child: Text(
        "Sign in",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      color: Colors.lightBlue,
      onPressed: () {},
    );
  }

  // button for sign-up
  Widget signUpButton() {
    return RaisedButton(
      child: Text(
        "Sign Up",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.lightBlue),
      ),
//      color: Colors.blue.shade600,
      onPressed: () {
        print("sign up");
        MaterialPageRoute materialPageRoute = MaterialPageRoute(builder: (BuildContext context) => Register());
        Navigator.of(context).push(materialPageRoute);
      },
    );
  }

  // present or add subview in ios for show button ui
  Widget showButton() {
    return Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
      signInButton(),
      SizedBox(
        width: 15,
      ),
      signUpButton()
    ]);
  }

  // drawing ui on device screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
//      decoration: BoxDecoration(
//          gradient: RadialGradient(
//              colors: [Colors.white, Colors.yellow.shade800], radius: 1)),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          showLogo(),
          showAppName("Amazing"),
          SizedBox(
            height: 10,
          ),
          showButton()
        ],
      )),
    )));
  }
}
