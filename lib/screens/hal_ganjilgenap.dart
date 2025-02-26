import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  String angka = "";
  int angka1 = 0;
  String hasil = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(labelText: "Masukkan bilangan"),
                keyboardType: TextInputType.numberWithOptions(),
                onChanged: (value) => angka = value,
              ),
            ),
            ElevatedButton(
              onPressed: hitunggangen,
              style: ButtonStyle(
                elevation: WidgetStateProperty.all(8),
                backgroundColor: WidgetStateProperty.all(Colors.blue),
              ),
              child: Text("Submit"),
            ),
            Text(hasil, style: TextStyle(fontSize: 18.0)),
          ],
        ),
      ),
    );
  }

  void hitunggangen() {
    setState(() {
      angka1 = int.parse(angka);
      if (angka1 % 2 == 0) {
        hasil = "Bilangan tersebut merupakan bilangan genap";
      } else {
        hasil = "Bilangan tersebut merupakan bilangan ganjil";
      }
    });
  }
}
