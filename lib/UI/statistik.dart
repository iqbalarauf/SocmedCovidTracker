import 'package:flutter/material.dart';

import 'package:protingtiga/Back-end/network.dart';

class Statistik extends StatefulWidget {
  const Statistik({ Key? key }) : super(key: key);

  @override
  State<Statistik> createState() => _StatistikState();
}

class _StatistikState extends State<Statistik> {

  late Future data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = getData();
    data.then( (value) => {
      print (value[0]['name'])
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Covid-19"),
      ),
      body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                    "Jumlah kasus di Indonesia",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0
                    )
                ),
              ),
              createTextFromApi()
            ],
          )
      ),
    );
  }

  Widget createTextFromApi(){
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      alignment: Alignment.topLeft,
      child: FutureBuilder(
          future: data,
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return Text(
                  "Positif: ${snapshot.data["positif"]}\nSembuh: ${snapshot.data["sembuh"]}\n"
                      "Meninggal: ${snapshot.data["meninggal"]}\nDirawat: ${snapshot.data["dirawat"]}"
              );
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }

  Future getData() async {
    Network network = Network("https://data.covid19.go.id/public/api/update.json");
    return network.fetchData();
  }
}