import 'package:flutter/material.dart';
import 'package:protingtiga/Back-end/DataModel.dart';
import 'package:protingtiga/Back-end/detailData.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  static List<String> namaBerita = [
    'Sebaran 559 Corona 18 April 2022, Tertinggi DKI Jakarta Sumbang 170, Jawa Barat 124 Kasus',
    '99 Persen Warga RI Disebut Kebal COVID-19, Ini Alasannya',
    'Pemerintah Imbau Tak ke Luar Negeri saat Libur Panjang Lebaran',
    'Persiapan Mudik Lebaran 2022 Aman dan Nyaman, Pengendalian COVID-19?',
    'RS Lapangan Indrapura Resmi Ditutup, Khofifah: Terima Kasih Semuanya',
    'WHO Bawa Kabar Baik Lagi soal Covid-19, Segera Berakhir?',
    'Aturan Baru: Nonton Pertandingan Olahraga Wajib Booster',
  ];

  static List<String> deskripsi = [
    'Pada Senin hari ini, tercatat jumlah pasien yang terkonfirmasi positif terpapar Covid-19 bertambah sebanyak 559 pasien.Jumlah ini lebih sedikit dari jumlah angka pasien yang terkonfirmasi positif terpapar Covid-19 pada hari sebelumnya, yakni 607 orang.Dengan tambahan angka positif berjumlah 559 orang, maka total jumlah pasien yang terkonfirmasi positif akibat virus corona pada hari ini menjadi 6.040.432 orang.',
    'Menteri Kesehatan RI Budi Gunadi Sadikin mengatakan antibodi yang terbentuk di masyarakat naik menjadi 99,2 persen menjelang Lebaran."Bisa disampaikan bahwa kadar antibodi masyarakat Indonesia naik menjadi 99,2 persen. Artinya, 99,2 persen dari populasi masyarakat Indonesia sudah memiliki antibodi, bisa itu berasal dari vaksinasi maupun juga berasal dari infeksi,".',
    'Pemerintah memberikan cuti bersama Lebaran 2022 yang lebih panjang dibandingkan tahun sebelumnya. Namun, masyarakat diminta tidak pergi ke luar negeri saat libur Lebaran. "Dengan adanya libur panjang, masyarakat juga diimbau untuk tidak berpergian ke luar negeri," kata Menteri Koordinator Bidang Perekonomian Airlangga Hartarto usai rapat terbatas dengan Presiden Joko Widodo di Kantor Presiden, Jakarta, Senin (18/4).',
    'Berbeda dari dua tahun sebelumnya, masyarakat boleh melakukan mudik Lebaran pada tahun ini. Pemerintah optimistis penyelenggaraan mudik Lebaran 2022 dapat berjalan aman dari serangan COVID-19. Pemerintah memastikan, kebijakan mudik tahun ini juga dipersiapkan dengan matang bekerja sama berbagai lintas sektor.',
    'Rumah Sakit Lapangan Indrapura Surabaya resmi ditutup seiring dengan terbitnya SK Gubernur Jawa Timur Nomor 188/237/KPTS/013/2022). Setelah beroperasi selama 22 bulan dan berjibaku tangani ribuan pasien covid-19, operasional RS Lapangan Indrapura akhirnya diberhentikan. Hal ini juga merujuk pada kondisi pandemi covid-19 di Jawa Timur yang terus membaik dan terkendali.',
    'Organisasi Kesehatan Dunia (WHO) memberi laporan terbaru soal kasus Covid-19 dunia. Meski belum ada tanda-tanda berakhir, namun penurunan kasus terlihat. Dari update epidemiologi mingguan, 19-12 April 2022, WHO mencatat kasus Covid-19 telah mengalami penurunan 24% dibandingkan sebelumnya. Tren penurunan sudah terjadi tiga minggu berturut-turut.',
    'Pemerintah memperbarui aturan kegiatan masyarakat aman Covid-19 . Kini, penonton pertandingan olahraga wajib vaksinasi booster. Jika belum booster, minimal masyarakat yang akan menonnton telah divaksin dosis kedua, Hanya mereka masih harus dites antigen di lokasi pertandingan. Aturan ini tertuang dalam Instruksi Menteri Dalam Negeri Nomor 22 Tahun 2022 tentang Perpanjangan Pemberlakuan Pembatasan Kegiatan Masyarakat (PPKM) di Jawa-Bali hingga 9 Mei 2022 mendatang.',
  ];

  static List url = [
    'https://statik.tempo.co/data/2020/07/16/id_953075/953075_720.jpg',
    'https://cdn-2.tstatic.net/tribunnews/foto/bank/images/ilustrasi-covid-19-corona-1207.jpg',
    'https://cdn-2.tstatic.net/tribunnews/foto/bank/images/grafis-update-berita-covid-19.jpg',
    'https://mmc.kalteng.go.id/files/berita/29042020072714_0.jpeg',
    'https://media.suara.com/pictures/653x366/2020/04/27/82544-ilustrasi-covid-19.jpg',
    'https://awsimages.detik.net.id/visual/2020/08/18/logo-world-health-organization-who_169.jpeg?w=715&q=90',
    'https://pict-c.sindonews.net/dyn/732/pena/news/2022/04/19/15/747185/aturan-baru-nonton-pertandingan-olahraga-wajib-booster-ojl.jpg',
  ];

  static List sub = [
    'Pada Senin hari ini, tercatat jumlah pasien yang terkonfirmasi positif terpapar Covid-19 bertambah...',
    'Menteri Kesehatan RI Budi Gunadi Sadikin mengatakan antibodi yang terbentuk di masyarakat naik men...',
    'Pemerintah memberikan cuti bersama Lebaran 2022 yang lebih panjang dibandingkan tahun sebelumnya...',
    'Berbeda dari dua tahun sebelumnya, masyarakat boleh melakukan mudik Lebaran pada tahun ini...',
    'Rumah Sakit Lapangan Indrapura Surabaya resmi ditutup seiring dengan terbitnya SK Gubernur Jawa...',
    'Organisasi Kesehatan Dunia (WHO) memberi laporan terbaru soal kasus Covid-19 dunia. Meski belum...',
    'Pemerintah memperbarui aturan kegiatan masyarakat aman Covid-19 . Kini, penonton pertandingan...',
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
                          fontSize: 14
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
