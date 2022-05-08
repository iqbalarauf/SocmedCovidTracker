import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:protingtiga/Back-end/updateStatModel.dart';

class Statistik extends StatefulWidget {
  const Statistik({ Key? key }) : super(key: key);

  @override
  State<Statistik> createState() => _StatistikState();
}

class _StatistikState extends State<Statistik> {

  List<UpdateStatDetail> _list = [];
  var loading = false;
  Future<Null> _fetchData() async {
    setState(() {
      loading = true;
    });
    final response =
    await http.get(Uri.parse("https://data.covid19.go.id/public/api/update.json"));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        for (Map i in data) {
          _list.add(UpdateStatDetail.fromJson(i));
        }
        loading = false;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: Container(
        child: loading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
          itemCount: _list.length,
          itemBuilder: (context, i) {
            final x = _list[i];
            return Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Data Pemeriksaan Harian",
                    style: TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  Text('Orang Dalam Pengawasan: ' + x.data.jumlah_odp),
                  Text('Pasien Dalam Pengawasan: ' + x.data.jumlah_pdp),
                  Text('Total Spesimen' + x.data.total_spesimen),
                  Text('Spesimen Negatif' + x.data.total_spesimen_negatif),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Update" + x.update.tanggal,
                    style: TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  Text("Positif: " + x.update.jumlah_positif),
                  Text('Meninggal: ' + x.update.jumlah_meninggal),
                  Text('Sembuh: ' + x.update.jumlah_sembuh),
                  Text('Dirawat: ' + x.update.jumlah_dirawat),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Data Kumulatif",
                    style: TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  Text('Positif: ' + x.total.jumlah_positif_kum),
                  Text('Meninggal: ' + x.total.jumlah_meninggal_kum),
                  Text('Sembuh: ' + x.total.jumlah_sembuh_kum),
                  Text('Dirawat: ' + x.total.jumlah_dirawat_kum),
                  SizedBox(
                    height: 5.0,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
