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
    'MITOS: Vaksin COVID-19 mRNA dapat mengakibatkan kematian, Faktanya',
    'Batasi Penyebaran COVID-19, Cara Paling Efektif untuk Hentikan Timbulnya Varian Baru',
    'MITOS: Jutaan orang telah meninggal dunia karena vaksin COVID-19, Faktanya',
    'Setelah Vaksinasi COVID-19 Tetap Harus Hati-Hati',
    'Ketentuan Protokol Kesehatan pada Pelaksanaan Kegiatan Berskala Besar',
    'Penggunaan Vaksin COVID-19 Dosis Lanjutan (Booster)',
    '#TetapPakaiMasker Jumlah kasus harian kembali meningkat di atas 1.000 kasus',
  ];

  static List<String> deskripsi = [
    '''MITOS: Vaksin COVID-19 mRNA dapat mengakibatkan kematian, faktanya vaksin COVID-19 mRNA tidak mengandung virus hidup.

       Vaksin mRNA bekerja dengan cara mengajarkan sel-sel tubuh kita untuk menciptakan "spike protein" yang mirip dengan yang ditemukan pada virus penyebab COVID-19, namun tidak berbahaya bagi tubuh, untuk melindungi kita dari virus yang asli.

       Lindungi diri dengan #TetapPakaiMasker dan #VaksinHarusLengkap!

       Berbagai informasi mengenai COVID-19 tersedia di https://covid19.go.id/ dan https://s.id/infovaksin

       #TetapPakaiMasker #VaksinHarusLengkap #CuciTanganPakaiSabun''',
    '''Untuk menghentikan timbulnya varian baru, cara paling efektif adalah dengan membatasi penyebaran COVID-19.

       Oleh karenanya, protokol kesehatan penting untuk diterapkan secara disiplin agar kita semua terlindungi.

       Berbagai informasi mengenai COVID-19 tersedia di https://covid19.go.id/ dan https://s.id/infovaksin

       #TetapPakaiMasker #VaksinHarusLengkap #CuciTanganPakaiSabun''',
    '''MITOS: Jutaan orang telah meninggal dunia karena vaksin COVID-19, faktanya kematian karena efek samping vaksin sangatlah jarang.

       Yang pasti, jutaan orang telah meninggal karena penyakit yang parah dan komplikasi kesehatan yang berkaitan dengan COVID-19. Sejak mulai menyebar ke seluruh dunia, COVID-19 telah merenggut lebih dari 6 juta nyawa.

       Lindungi diri dengan #TetapPakaiMasker dan #VaksinHarusLengkap!

       Berbagai informasi mengenai COVID-19 tersedia di https://covid19.go.id/ dan https://s.id/infovaksin

       #TetapPakaiMasker #VaksinHarusLengkap #CuciTanganPakaiSabun''',
    '''Sudah divaksinasi? Tetap perlu hati-hati untuk melindungi diri, keluarga, dan orang sekitar dari virus COVID-19.

       #TetapPakaiMasker, Jaga jarak aman dari orang lain, pastikan ruangan berventilasi baik, cuci tangan pakai sabun atau gunakan hand sanitizer, dan tutup mulut ketika batuk/bersin dengan siku atau tisu.

       Menjalankan protokol kesehatan tetap penting untuk mengurangi risiko tertular COVID-19, mendapatkan vaksin COVID-19 penting untuk menimbulkan atau meningkatkan daya tahan tubuh melawan COVID-19.

       Berbagai informasi mengenai COVID-19 tersedia di https://covid19.go.id/ dan https://s.id/infovaksin

       #TetapPakaiMasker #VaksinHarusLengkap #CuciTanganPakaiSabun''',
    '''Satgas Penanganan COVID-19 mengeluarkan SE Nomor 20/2022 yang mengatur tentang protokol kesehatan untuk kegiatan domestik/internasional berskala besar dengan peserta 1.000 orang atau lebih yang hadir secara fisik, atau ketika melibatkan perwakilan negara.

       Di antaranya adalah kewajiban vaksinasi untuk partisipan, lalu anak berusia 6-17 tahun wajib sudah vaksinasi dosis kedua, sedangkan jika sudah berusia 18 tahun wajib sudah vaksinasi dosis ketiga (booster). Untuk anak berusia belum 6 tahun dan orang yang tidak divaksin karena komorbid, diharapkan tidak mengikuti kegiatan tersebut.

       Terkait dengan skrining, secara spesifik untuk kegiatan yang melibatkan pejabat setingkat menteri ke atas (VVIP) wajib mensyaratkan hasil negatif PCR 2×24 jam. Untuk kegiatan forum multilateral dan tidak melibatkan VVIP wajib memiliki prosedur pemeriksaan gejala, dan diimbau untuk mensyaratkan antigen.

       Untuk kegiatan bukan forum multilateral dan tidak melibatkan VVIP, wajib memiliki prosedur pemeriksaan gejala, dan tes antigen bagi suspek COVID-19.

       Selain itu, penyelenggara wajib mendapat rekomendasi kelayakan penerapan protokol kesehatan dari Satgas COVID-19 Pusat, dan izin keramaian kegiatan masyarakat dari Polri, serta harus memenuhi kriteria protokol kesehatan.

       Baca selengkapnya kebijakan ini di https://covid19.go.id/p/regulasi

       Berbagai informasi mengenai COVID-19 tersedia di https://covid19.go.id dan https://s.id/infovaksin

       #TetapPakaiMasker #VaksinHarusLengkap #CuciTanganPakaiSabun''',
    '''Terdapat penambahan regimen dosis lanjutan (booster) untuk vaksin primer Sinovac dan Sinopharm, hal ini berdasarkan Surat Direktur Jenderal P2P Nomor SR.02.06/C/2761/2022 pada 28 Mei 2022.

       Penggunaan vaksin COVID-19 booster disesuaikan dengan ketersedian vaksin. Tidak perlu memilih merk vaksin COVID-19, karena vaksin yang terbaik adalah vaksin yang tersedia. Segera lengkapi dosis vaksin COVID-19 hingga dosis lanjutan (booster).

       Berbagai informasi mengenai COVID-19 tersedia di https://covid19.go.id dan https://s.id/infovaksin

       #TetapPakaiMasker #VaksinHarusLengkap #CuciTanganPakaiSabun''',
    '''Jumlah kasus harian kembali meningkat di atas 1.000 kasus.

       Ayo #TetapPakaiMasker khususnya saat:
       -di tempat ramai
       -berada dalam ruangan
       -berinteraksi langsung dengan orang lain
       
       Disiplin Protokol Kesehatan Lindungi Diri dan Keluarga Kita

       Berbagai informasi mengenai COVID-19 tersedia di https://covid19.go.id/ dan https://s.id/infovaksin

       #TetapPakaiMasker #VaksinHarusLengkap #CuciTanganPakaiSabun''',
  ];

  static List url = [
    'https://covid19.go.id/storage/app/uploads/public/62b/7c7/2af/62b7c72af1c83861708449.jpeg',
    'https://covid19.go.id/storage/app/uploads/public/62b/6f0/9d6/62b6f09d6872a552883072.jpeg',
    'https://covid19.go.id/storage/app/uploads/public/62b/6f0/098/62b6f00981a77615279877.jpeg',
    'https://covid19.go.id/storage/app/uploads/public/62b/6ef/69d/62b6ef69d5373188635806.jpeg',
    'https://covid19.go.id/storage/app/uploads/public/62b/467/18b/62b46718b941c974865614.jpeg',
    'https://covid19.go.id/storage/app/uploads/public/62b/19e/405/62b19e4054ec9061489407.jpeg',
    'https://covid19.go.id/storage/app/uploads/public/62b/058/893/62b05889330ed112132451.jpeg',
  ];

  static List sub = [
    'MITOS: Vaksin COVID-19 mRNA dapat mengakibatkan kematian, faktanya vaksin COVID-19 mRNA tidak meng...',
    'Untuk menghentikan timbulnya varian baru, cara paling efektif adalah dengan membatasi penyebaran...',
    'MITOS: Jutaan orang telah meninggal dunia karena vaksin COVID-19, faktanya kematian karena...',
    'Sudah divaksinasi? Tetap perlu hati-hati untuk melindungi diri, keluarga, dan orang sekitar...',
    'Satgas Penanganan COVID-19 mengeluarkan SE Nomor 20/2022 yang mengatur tentang protokol...',
    'Terdapat penambahan regimen dosis lanjutan (booster) untuk vaksin primer Sinovac dan Sinopharm, hal ini...',
    'Jumlah kasus harian kembali meningkat di atas 1.000 kasus. Ayo #TetapPakaiMasker khususnya saat:...',
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