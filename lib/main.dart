import 'package:flutter/material.dart';
import 'package:app_tpmteori1/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawers Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Home(),
    );
  }
}
