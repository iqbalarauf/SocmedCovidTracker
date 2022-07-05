import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:protingtiga/dataCovid.dart';
import 'package:http/http.dart' as http;

class Statistik extends StatefulWidget {
  const Statistik({Key? key}) : super(key: key);

  @override
  State<Statistik> createState() => _StatistikState();
}

Covid covid_res = Covid();

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

  final harianKonfirmasi =
      covid_res.update?.penambahan?.jumlahPositif.toString() ?? "";
  final harianSembuh =
      covid_res.update?.penambahan?.jumlahSembuh.toString() ?? "";
  final harianWafat =
      covid_res.update?.penambahan?.jumlahMeninggal.toString() ?? "";

  final totalKonfirmasi =
      covid_res.update?.total?.jumlahPositif.toString() ?? "";
  final totalSembuh = covid_res.update?.total?.jumlahSembuh.toString() ?? "";
  final totalWafat = covid_res.update?.total?.jumlahMeninggal.toString() ?? "";

  final spesimen = covid_res.data?.totalSpesimen.toString() ?? "";
  final odp = covid_res.data?.jumlahOdp.toString() ?? "";
  final pdp = covid_res.data?.jumlahPdp.toString() ?? "";
  final spesimenNeg = covid_res.data?.totalSpesimenNegatif.toString() ?? "";

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(15),
      child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(2),
                  topRight: Radius.circular(2))),
          //side: BorderSide( color: Colors.black)),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    Text("Kasus COVID-19 Indonesia",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                ),
                Divider(),
                Row(
                  children: <Widget>[
                    Flexible(
                        child: ListTile(
                      title: Text(
                        "Tanggal:",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                          covid_res.update?.penambahan?.tanggal.toString() ??
                              "",
                          style: TextStyle()),
                    ))
                  ],
                ),
                Text('Kasus Harian',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
                Text('\n', style: TextStyle(fontSize: 4)),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Konfirmasi\n $harianKonfirmasi',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.yellow, fontSize: 16),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Sembuh\n $harianSembuh',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.green, fontSize: 16),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Wafat\n $harianWafat',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.red, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Text('Kasus Kumulatif',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
                Text('\n', style: TextStyle(fontSize: 4)),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Konfirmasi\n $totalKonfirmasi',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.yellow, fontSize: 16),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Sembuh\n $totalSembuh',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.green, fontSize: 16),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Wafat\n $totalWafat',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.red, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Text('Jumlah Spesimen',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
                Text(' \n ', style: TextStyle(fontSize: 4)),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Spesimen\n $spesimen',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Orang Dalam\n Pengawasan\n $odp',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Pasien Dalam\n Pengawasan\n $pdp',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.red, fontSize: 12),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Spesimen Negatif\n $spesimenNeg',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.red, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    ));
  }
}
