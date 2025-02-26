import 'package:flutter/material.dart';
import 'package:app_tpmteori1/screens/home.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  String username = "";
  String password = "";
  String username1 = "";
  String password1 = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ValueListenableBuilder(
        valueListenable: statuslog,
        builder:
            (context, value, child) => Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    if (value == true)
                      Text("Ini adalah halaman login dan home"),
                    if (value == false)
                      Text("Login", style: TextStyle(fontSize: 50.0)),
                    if (value == false)
                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: TextField(
                          decoration: InputDecoration(labelText: "Username"),
                          onChanged: (value) => username = value,
                        ),
                      ),
                    if (value == false)
                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: TextField(
                          decoration: InputDecoration(labelText: "Password"),
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          onChanged: (value) => password = value,
                        ),
                      ),
                    if (value == false)
                      ElevatedButton(
                        onPressed: verifikasi,
                        style: ButtonStyle(
                          elevation: WidgetStateProperty.all(8),
                          backgroundColor: WidgetStateProperty.all(Colors.blue),
                        ),
                        child: Text("Submit"),
                      ),
                  ],
                ),
              ),
            ),
      ),
    );
  }

  void setUsername() {
    setState(() {
      username1 = username;
    });
  }

  void setPassword() {
    setState(() {
      password1 = password;
    });
  }

  void verifikasi() {
    setUsername();
    setPassword();
    if (username1 == "aku" && password1 == "ganteng") {
      setState(() {
        statuslog.value = true;
      });
    }
  }
}
