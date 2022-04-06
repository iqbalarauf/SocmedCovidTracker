import 'package:flutter/material.dart';

class InfoCovid extends StatefulWidget {
  const InfoCovid({Key? key}) : super(key: key);

  @override
  State<InfoCovid> createState() => _InfoCovidState();
}

class _InfoCovidState extends State<InfoCovid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Informasi Covid'),
      ),
    );
  }
}
