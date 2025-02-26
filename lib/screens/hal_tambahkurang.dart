import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  String angkaa = "";
  int angka1 = 0;
  String angkab = "";
  int angka2 = 0;
  int angka3 = 0;
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
                decoration: InputDecoration(labelText: "Masukkan nilai A"),
                keyboardType: TextInputType.numberWithOptions(),
                onChanged: (value) => angkaa = value,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(labelText: "Masukkan nilai B"),
                keyboardType: TextInputType.numberWithOptions(),
                onChanged: (value) => angkab = value,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: hitungtambah,
                style: ButtonStyle(
                  elevation: WidgetStateProperty.all(8),
                  backgroundColor: WidgetStateProperty.all(Colors.blue),
                ),
                child: Text("A+B"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: hitungkurang,
                style: ButtonStyle(
                  elevation: WidgetStateProperty.all(8),
                  backgroundColor: WidgetStateProperty.all(Colors.blue),
                ),
                child: Text("A-B"),
              ),
            ),
            Text(hasil, style: TextStyle(fontSize: 18.0)),
          ],
        ),
      ),
    );
  }

  void hitungtambah() {
    setState(() {
      angka1 = int.parse(angkaa);
      angka2 = int.parse(angkab);
      angka3 = angka1 + angka2;
      hasil = "Hasil = $angka3";
    });
  }

  void hitungkurang() {
    setState(() {
      angka1 = int.parse(angkaa);
      angka2 = int.parse(angkab);
      angka3 = angka1 - angka2;
      hasil = "Hasil = $angka3";
    });
  }
}
