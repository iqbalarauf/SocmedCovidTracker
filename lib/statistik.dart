import 'package:flutter/material.dart';

class Statistik extends StatefulWidget {
  const Statistik({ Key? key }) : super(key: key);

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
              color: Colors.white,
              width: 400,
              height: 300,
              padding: EdgeInsets.all(3),
              child: Image(
                image: NetworkImage("https://awsimages.detik.net.id/community/media/visual/2020/05/15/2df4fd60-7f64-4325-8f6b-ca357fd2321e.jpeg?w=879"),
                fit: BoxFit.contain,
              ),
            ),
            Container(
              child: Text("Terkonfirmasi: 1.816.041 jiwa"),
              width: 250,
              color: Colors.orange,
              padding: EdgeInsets.all(16.0),
            ),
            Divider(),
            Container(
              child: Text("Dalam Perawatan: 101.639 jiwa"),
              width: 250,
              color: Colors.yellow,
              padding: EdgeInsets.all(16.0),
            ),
            Container(
              child: Text("Sembuh: 1.663.998 jiwa"),
              width: 250,
              color: Colors.green,
              padding: EdgeInsets.all(16.0),
            ),
            Container(
              child: Text("Wafat: 50.404 jiwa"),
              width: 250,
              color: Colors.red,
              padding: EdgeInsets.all(16.0),
            ),
          ],
        )
    );
  }
}