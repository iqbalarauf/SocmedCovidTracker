import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:protingtiga/dataCovid.dart';
import 'package:http/http.dart' as http;

class Statistik extends StatefulWidget {
  const Statistik({Key? key}) : super(key: key);

  @override
  State<Statistik> createState() => _StatistikState();
}

late Covid covid_res;

Future<Covid> getIDNCount() async {
  final response = await http
      .get(Uri.parse('https://data.covid19.go.id/public/api/update.json'));
  return Covid.fromJson(json.decode(response.body));
}

class _StatistikState extends State<Statistik> {
  Future<void> loadcount() async {
    setState(() {
      var countloading = true;
    });
    covid_res = await getIDNCount();
    print("covid deaths is" +
        covid_res.update!.total!.jumlahMeninggal.toString());
    setState(() {
      var countloading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadcount();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          child: Text(
              "Tanggal: " + covid_res.update!.penambahan!.tanggal.toString()),
          width: 300,
          color: Colors.orange,
          padding: EdgeInsets.all(16.0),
        ),
        Divider(),
        Container(
          child: Text("Terkonfirmasi: " +
              covid_res.update!.total!.jumlahPositif.toString() +
              " jiwa"),
          width: 300,
          color: Colors.orange,
          padding: EdgeInsets.all(16.0),
        ),
        Container(
          child: Text("Sembuh: " +
              covid_res.update!.total!.jumlahSembuh.toString() +
              " jiwa"),
          width: 250,
          color: Colors.yellow,
          padding: EdgeInsets.all(16.0),
        ),
        Container(
          child: Text("Wafat: " +
              covid_res.update!.total!.jumlahMeninggal.toString() +
              " jiwa"),
          width: 250,
          color: Colors.red,
          padding: EdgeInsets.all(16.0),
        ),
      ],
    ));
  }
}
