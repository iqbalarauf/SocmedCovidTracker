import 'package:flutter/material.dart';
import 'package:protingtiga/home.dart';
import 'package:protingtiga/infoCovid.dart';
import 'package:protingtiga/riwayat.dart';
import 'package:protingtiga/sideBar.dart';
import 'package:protingtiga/statistik.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {

  int currentIndex = 0;
  final List<Widget> body =[
    Home(),
    Statistik(),
    InfoCovid()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      appBar: AppBar(
        title: Text('Socmed Covid Tracker'),
      ),
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontap,
        currentIndex: currentIndex ,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.assessment),
              label: "Statistik"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.description),
              label: "Informasi Covid"
          ),
        ],
      ),
    );
  }

  void ontap(int index){
    setState(() {
      currentIndex = index;
    });
  }
}
