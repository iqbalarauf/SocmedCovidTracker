import 'package:flutter/material.dart';
import 'package:protingtiga/home.dart';
import 'package:protingtiga/infoCovid.dart';
import 'package:protingtiga/riwayat.dart';
import 'package:protingtiga/statistik.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int currentIndex = 0;
  final List<Widget> body = [Home(), Statistik(), Riwayat(), InfoCovid()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(0, 255, 255, 255),
          elevation: 0,
          title: Text(
            "Selamat Datang",
            style: TextStyle(
              color: Color.fromARGB(205, 0, 0, 0),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          actions: [
            FloatingActionButton.small(
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              onPressed: () {},
              child: Icon(
                Icons.person,
                size: 18,
                color: Colors.black,
              ),
            ),
          ],
          automaticallyImplyLeading: false),
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontap,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color.fromARGB(39, 127, 127, 127)),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.assessment,
                  color: Color.fromARGB(39, 127, 127, 127)),
              label: "Statistik"),
          BottomNavigationBarItem(
              icon:
                  Icon(Icons.history, color: Color.fromARGB(39, 127, 127, 127)),
              label: "Riwayat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.description,
                  color: Color.fromARGB(39, 127, 127, 127)),
              label: "Informasi Covid"),
        ],
      ),
    );
  }

  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
