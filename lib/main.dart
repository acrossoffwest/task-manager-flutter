import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'HexColor.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
  // // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  // //     .then((_) {
  //   runApp(new MyApp());
  // });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task manager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          hintColor: HexColor.fromHex('#c2b9ac'),
          primaryColor: HexColor.fromHex('#181e24'),
          fontFamily: "Montserrat",
          canvasColor: Colors.transparent),
      home: Home(),
    );
  }
}