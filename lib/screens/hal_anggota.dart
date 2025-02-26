import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Abdan Shaabirun Mardha \t123220107",
              style: TextStyle(fontSize: 24.0),
            ),
            Text(
              "Gabriel Bryanta Sembiring \t123220189",
              style: TextStyle(fontSize: 24.0),
            ),
            Text(
              "Nadia Nurhalisa \t\t123220107",
              style: TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
    );
  }
}
