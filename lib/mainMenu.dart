import 'package:flutter/material.dart';
import 'package:protingtiga/sideBar.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      appBar: AppBar(
        title: Text('Socmed Covid Tracker'),
      ),
      body: Center(),
    );
  }
}
