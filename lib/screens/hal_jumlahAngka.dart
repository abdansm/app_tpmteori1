import 'package:flutter/material.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5> {
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
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: hitungdigit,
                style: ButtonStyle(
                  elevation: WidgetStateProperty.all(8),
                  backgroundColor: WidgetStateProperty.all(Colors.blue),
                ),
                child: Text("Submit"),
              ),
            ),
            Text(hasil, style: TextStyle(fontSize: 18.0)),
          ],
        ),
      ),
    );
  }

  void hitungdigit() {
    setState(() {
      angka1 = int.parse(angka);
      int angkadigit = 0;
      while (angka1 > 0) {
        angkadigit = angkadigit + angka1 % 10;
        angka1 = (angka1 / 10).floor();
      }
      hasil = "Jumlah Seluruh Angka = $angkadigit";
    });
  }
}
