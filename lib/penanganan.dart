import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Penanganan extends StatefulWidget {
  const Penanganan({Key? key}) : super(key: key);

  @override
  State<Penanganan> createState() => _PenangananState();
}

class _PenangananState extends State<Penanganan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
          height: 340.0,
          decoration: BoxDecoration(
            color: Color(0xFF90CAF9),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: const [
              Text(
                "Bagaimana jika mengalami gejala/kontak erat?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                    color: Colors.black),
              ),
              Text(
                " ",
                style: TextStyle(fontSize: 14),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Riwayat kontak yang dimaksud antara lain:",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 11,
                      color: Colors.black),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "a. Kontak tatap muka/berdekatan dengan kasus probable atau kasus konfirmasi dalam radius 1 meter dan dalam jangka waktu 15 menit atau lebih.",
                  style: TextStyle(fontSize: 11, color: Colors.black),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "b. Sentuhan fisik langsung dengan kasus probable atau konfirmasi (seperti bersalaman, berpegangan tangan, dan lain-lain)",
                  style: TextStyle(fontSize: 11, color: Colors.black),
                ),
              ),
              Text(
                " ",
                style: TextStyle(fontSize: 14),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Jika terkonfirmasi anda kontak erat dengan pasien COVID-19, lakukan hal ini:",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 11,
                      color: Colors.black),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "1. Melakukan tes PCR dan isolasi mandiri selama 5 hari. Jika di hari ke-5 masih positif, isoman dilanjutkan hingga hari ke-10",
                  style: TextStyle(fontSize: 11, color: Colors.black),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "2. Hindari kontak dengan orang lain dan pantau gejala yang dialami",
                  style: TextStyle(fontSize: 11, color: Colors.black),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "3. Laporkan diri kepada pihak terkait (RT/Puskesmas) untuk mendapatkan obat dan pemantauan",
                  style: TextStyle(fontSize: 11, color: Colors.black),
                ),
              ),
              Text(
                " ",
                style: TextStyle(fontSize: 12),
              ),
              Text(
                "Telah disesuaikan dengan Peraturan Kemenkes Nomor HK.02.01/MENKES/18/2022",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 7,
                    color: Colors.black),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.redAccent, // background (button) color
                  onPrimary: Colors.white, // foreground (text) color
                  padding: EdgeInsets.all(25),
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
              child: Text("Hubungi 119"),
              onPressed: () async {
                String callcenter = '119';
                String telephoneUrl = "tel:$callcenter";
                if (await canLaunch(telephoneUrl)) {
                  await launch(telephoneUrl);
                } else {
                  throw "Error occured trying to call that number.";
                }
              },
            ),
            SizedBox(width: 25),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                padding: EdgeInsets.all(25),
                textStyle: TextStyle(
                  fontSize: 18,
                ),
                side: BorderSide(color: Colors.black, width: 1),
              ),
              child: Text("Periksa Diri"),
              onPressed: () async {
                const url = 'https://corona.jatengprov.go.id/screening';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
            ),
          ],
        ),
      ],
    ));
  }
}
