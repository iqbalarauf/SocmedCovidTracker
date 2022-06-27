import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:protingtiga/penanganan.dart';

class InfoCovid extends StatefulWidget {
  const InfoCovid({Key? key}) : super(key: key);

  @override
  State<InfoCovid> createState() => _InfoCovidState();
}

class _InfoCovidState extends State<InfoCovid> {
  List<ExpansionItem> items = <ExpansionItem>[
    ExpansionItem(
        header: "Apa itu COVID-19?",
        body:
            "COVID-19 adalah penyakit yang disebabkan oleh Novel Coronavirus (2019-nCoV), jenis baru coronavirus yang pada manusia menyebabkan penyakit mulai flu biasa hingga penyakit yang serius seperti Middle East Respiratory Syndrome (MERS) dan Sindrom Pernapasan Akut Berat/ Severe Acute Respiratory Syndrome (SARS)."),
    ExpansionItem(
        header: "Apa saja Gejala dari COVID-19?",
        body:
            "Gejala umum berupa demam ≥38°C, batuk kering, dan sesak napas. Jika ada orang yang dalam 14 hari sebelum muncul gejala tersebut pernah melakukan perjalanan ke negara terjangkit, atau pernah merawat/kontak erat dengan penderita COVID-19, maka terhadap orang tersebut akan dilakukan pemeriksaan laboratorium lebih lanjut untuk memastikan diagnosisnya."),
    ExpansionItem(
        header: "Apakah COVID-19 ada Obatnya?",
        body:
            "Hingga saat ini belum ditemukan obat yang efektif mencegah COVID-19. Saat ini, vaksin hanya dapat mengurangi gejala dan tingkat keparahan COVID-19 itu sendiri."),
    ExpansionItem(
        header: "Bagaimana cara mencegah diri tertular?",
        body:
            "Seseorang dapat terinfeksi dari penderita COVID-19. Penyakit ini dapat menyebar melalui tetesan kecil (droplet) dari hidung atau mulut pada saat batuk atau bersin. Droplet tersebut kemudian jatuh pada benda di sekitarnya. Kemudian jika ada orang lain menyentuh benda yang sudah terkontaminasi dengan droplet tersebut, lalu orang itu menyentuh mata, hidung atau mulut (segitiga wajah), maka orang itu dapat terinfeksi COVID-19. Seseorang juga bisa terinfeksi COVID-19 ketika tanpa sengaja menghirup droplet dari penderita. Inilah sebabnya mengapa kita penting untuk menjaga jarak hingga kurang lebih satu meter dari orang yang sakit.")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              items[index].isExpanded = !items[index].isExpanded;
            });
          },
          children: items.map((ExpansionItem item) {
            return ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return Container(
                    margin: EdgeInsets.only(left: 10, top: 15),
                    child: Text(
                      item.header,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 14,
                          color: Colors.black),
                    ),
                  );
                },
                isExpanded: item.isExpanded,
                body: Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Text(item.body),
                ));
          }).toList(),
        )
      ],
    ));
  }
}

class ExpansionItem {
  bool isExpanded;
  final String header;
  final String body;

  ExpansionItem(
      {this.isExpanded: false, required this.header, required this.body});
}

/* return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: MaterialButton(
        elevation: 5,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return Penanganan();
          }));
        },
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Color.fromARGB(255, 102, 102, 102),
        child: Text(
          'Informasi Penanganan COVID-19',
          style: TextStyle(
              color: Color(0xff8ebbfd),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
*/
