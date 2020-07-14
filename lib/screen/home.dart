import 'package:MyApp/screen/register.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // method
  Widget showLogo() {
    return Container(
        width: 120, height: 120, child: Image.asset("images/logo.png"));
  }

  Widget showAppName(String name) {
    return Text(
      name,
      style: TextStyle(
        fontSize: 20,
        color: Colors.blue.shade500,
        fontWeight: FontWeight.bold,
//        fontStyle: FontStyle.normal,
//        fontFamily: "EkkamaiNew",
      ),
    );
  }

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

  Widget showButton() {
    return Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
      signInButton(),
      SizedBox(
        width: 15,
      ),
      signUpButton()
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      decoration: BoxDecoration(
          gradient: RadialGradient(
              colors: [Colors.white, Colors.yellow.shade800], radius: 1)),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          showLogo(),
          showAppName("amazon"),
          SizedBox(
            height: 10,
          ),
          showButton()
        ],
      )),
    )));
  }
}
