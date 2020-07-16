import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // explicit
  final nameKey = GlobalKey<FormState>();
  // Method
  Widget registerButton() {
    return IconButton(
        icon: Icon(Icons.cloud_upload),
        onPressed: () {
          if (nameKey.currentState.validate()) {
            print("Upload");
            nameKey.currentState.save();
          }
        });
  }

  Widget textFrom(
      Icon icon, String labelText, String helperText, TextInputType keyboard, String Function(String) validate ) {
    return TextFormField(
      keyboardType: keyboard,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        icon: icon,
        labelText: labelText,
//        hintStyle: TextStyle(color: Colors.blue.shade600),
        labelStyle: TextStyle(color: Colors.grey.shade500),
        helperText: helperText,
        helperStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.grey.shade400),
      ),
      validator: validate
    );
  }

  Widget nameText() {
    String Function(String) valid = (String  text) {
      if (text.isEmpty) {
        return "please enter display name";
      }
    };

    return textFrom(Icon(Icons.face), "Display name", "example : popular",
        TextInputType.text, valid);
  }

  Widget emailText() {
    String Function(String) valid = (String  text) {
      if (text.isEmpty) {
        return "please enter true email";
      }
    };

    return textFrom(Icon(Icons.alternate_email), "Email", "example : popular@email.com",
        TextInputType.emailAddress, valid);
  }

  Widget passwordText() {

    String Function(String) valid = (String  text) {
      if (text.isEmpty) {
        return "please enter ABCD1234567890";
      }
    };

    return textFrom(Icon(Icons.enhanced_encryption), "Password", "example : ABCD1234567890",
        TextInputType.visiblePassword, valid);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Register",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlue,
        actions: <Widget>[registerButton()],
      ),
      body: Form(key: nameKey,child: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[nameText(), emailText(), passwordText()],)
      ),
    );
  }
}
