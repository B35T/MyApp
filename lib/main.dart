import 'package:MyApp/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override

  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
