import 'package:flutter/material.dart';

class Penanganan extends StatefulWidget {
  const Penanganan({Key? key}) : super(key: key);

  @override
  State<Penanganan> createState() => _PenangananState();
}

class _PenangananState extends State<Penanganan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Tindakan Pengobatan'),
      ),
    );
  }
}
