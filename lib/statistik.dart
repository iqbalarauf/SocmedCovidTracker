import 'package:flutter/material.dart';

class Statistik extends StatefulWidget {
  const Statistik({Key? key}) : super(key: key);

  @override
  State<Statistik> createState() => _StatistikState();
}

class _StatistikState extends State<Statistik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          child: Text("Terkonfirmasi: 1.816.045 jiwa"),
          width: 300,
          color: Colors.orange,
          padding: EdgeInsets.all(16.0),
        ),
        Divider(),
        Container(
          child: Text("Dalam Perawatan: 101.650 jiwa"),
          width: 250,
          color: Colors.yellow,
          padding: EdgeInsets.all(16.0),
        ),
        Container(
          child: Text("Sembuh: 1.663.998 jiwa"),
          width: 250,
          color: Colors.blue,
          padding: EdgeInsets.all(16.0),
        ),
        Container(
          child: Text("Wafat: 50.404 jiwa"),
          width: 250,
          color: Colors.red,
          padding: EdgeInsets.all(16.0),
        ),
      ],
    ));
  }
}
