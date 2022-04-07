import 'package:flutter/material.dart';

class InfoCovid extends StatefulWidget {
  const InfoCovid({Key? key}) : super(key: key);

  @override
  State<InfoCovid> createState() => _InfoCovidState();
}

class _InfoCovidState extends State<InfoCovid> {

  final List<String> entries = <String>[
    'Apa itu Covid-19?',
    'Apa saja gejala dari Covid-19?',
    'Apakah Covid-19 ada obatnya?',
    'Bagaimana cara mencegah diri tertular?'
  ];
  final List<int> colorCodes = <int>[50, 100, 50, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.blue[colorCodes[index]],
              child: Center(child: Text('> ${entries[index]}')),
            );
          }
      )
    );
  }
}
