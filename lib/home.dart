import 'package:flutter/material.dart';
import 'package:protingtiga/DataModel.dart';
import 'package:protingtiga/detailData.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  static List<String> namaBerita = [
    'abcd',
    'efgh',
    'gsfjgk',
    'sdgsdng',
    'sdgksdg',
  ];

  static List<String> deskripsi = [
    'bsdgjkbsjgbskjgb sdjgsdjgbjskdbgsadbg sjkdgbjs agsbdjkb',
    'sdbj sdgjk jd dsbgkjsabg asdjgb bsdg jb sjgbs jkdbgsjd bg',
    'q sdbjfka jbadfkjbdsbf sfjkdbsfa sdnfkdsn  nsdgakn  sdbgkb',
    'sndfklnas sndafklna dsk ksldfn ksnd gklsn nsdklgnskldngksgn',
    'sngk kgk skdgnlskdngksla sndgklnsd kgnsdgleawib sjd gbgbw g',
  ];

  static List url = [
    'https://statik.tempo.co/data/2020/07/16/id_953075/953075_720.jpg',
    'https://cdn0-production-images-kly.akamaized.net/uIJXSyOfWVgxKZgIem5fE2Mw8b0=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3157397/original/094178200_1592560845-20200619-Pemeriksaan-Covid-19-di-Permukiman-Kumuh-India-5.jpg',
    'https://cdn-2.tstatic.net/tribunnews/foto/bank/images/grafis-update-berita-covid-19.jpg',
    'https://mmc.kalteng.go.id/files/berita/29042020072714_0.jpeg',
    'https://media.suara.com/pictures/653x366/2020/04/27/82544-ilustrasi-covid-19.jpg',
  ];

  static List sub = [
    'bsdgjkbsjgbskjgb sdjgsdjgbjskdbgsadbg sjkdgbjs agsbdjkb',
    'sdbj sdgjk jd dsbgkjsabg asdjgb bsdg jb sjgbs jkdbgsjd bg',
    'q sdbjfka jbadfkjbdsbf sfjkdbsfa sdnfkdsn  nsdgakn  sdbgkb',
    'sndfklnas sndafklna dsk ksldfn ksnd gklsn nsdklgnskldngksgn',
    'sngk kgk skdgnlskdngksla sndgklnsd kgnsdgleawib sjd gbgbw g',
  ];

  final List<DataModel> dataBerita = List.generate(
      namaBerita.length,
          (index) => DataModel('${namaBerita[index]}', '${url[index]}',
        '${deskripsi[index]}', '${sub[index]}',));


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dataBerita.length,
        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              leading: SizedBox(
                width: 50,
                height: 50,
                child: Image.network(dataBerita[index].ImageUrl),
              ),
              title: Text(dataBerita[index].name,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20
                  )
                ),
              subtitle: Text(dataBerita[index].sub),
              trailing: Icon(Icons.more_vert),
              isThreeLine: true,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailData(
                        DataModel: dataBerita[index],
                      )
                  )
                );
              },
              ),
            );
          }
          )
    );
  }
}
