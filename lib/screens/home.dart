import 'package:app_tpmteori1/screens/hal_anggota.dart';
import 'package:app_tpmteori1/screens/hal_loginhome.dart';
import 'package:app_tpmteori1/screens/hal_ganjilgenap.dart';
import 'package:app_tpmteori1/screens/hal_tambahkurang.dart';
import 'package:app_tpmteori1/screens/hal_jumlahAngka.dart';
import 'package:flutter/material.dart';

ValueNotifier<bool> statuslog = ValueNotifier<bool>(false);

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PageController _pageController;
  int _page = 0;
  String _judul = "";

  List drawerItems = [
    {"icon": Icons.home, "name": "Home"},
    {"icon": Icons.info, "name": "Daftar Anggota"},
    {"icon": Icons.numbers_rounded, "name": "Ganjil Genap"},
    {"icon": Icons.numbers, "name": "Penjumlahan dan Pengurangan"},
    {"icon": Icons.numbers_sharp, "name": "Penjumlahan dan Pengurangan"},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ValueListenableBuilder<bool>(
        valueListenable: statuslog,
        builder:
            (context, value, child) => Scaffold(
              appBar: AppBar(
                title: Text(_judul),
                backgroundColor: const Color.fromARGB(255, 90, 181, 255),
              ),

              drawer: Drawer(
                child: Visibility(
                  visible: value,
                  child: ListView(
                    children: <Widget>[
                      DrawerHeader(
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColorDark,
                        ),
                        child: Text(
                          "Tugas TPM 1",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),

                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: drawerItems.length,
                        itemBuilder: (BuildContext context, int index) {
                          Map item = drawerItems[index];
                          return ListTile(
                            leading: Icon(
                              item['icon'],
                              color:
                                  _page == index
                                      ? Theme.of(context).primaryColorDark
                                      : Theme.of(
                                        context,
                                      ).textTheme.titleMedium!.color,
                            ),
                            title: Text(
                              item['name'],
                              style: TextStyle(
                                color:
                                    _page == index
                                        ? Theme.of(context).primaryColorDark
                                        : Theme.of(
                                          context,
                                        ).textTheme.titleMedium!.color,
                              ),
                            ),
                            onTap: () {
                              _pageController.jumpToPage(index);
                              Navigator.pop(context);
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),

              body: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: _pageController,
                onPageChanged: onPageChanged,
                children: <Widget>[Page1(), Page2(), Page3(), Page4(), Page5()],
              ),
            ),
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
      switch (_page) {
        case 0:
          _judul = "Halaman Home";
          break;
        case 1:
          _judul = "Halaman Anggota";
          break;
        case 2:
          _judul = "Halaman ganjil genap";
          break;
        case 3:
          _judul = "Tambah dan Kurang";
          break;
        case 4:
          _judul = "Jumlah Angka";
          break;
      }
    });
  }

  void ubahJudul() {
    if (statuslog.value == true) {
      setState(() {
        _judul = "Halaman Home";
      });
    }
  }
}
