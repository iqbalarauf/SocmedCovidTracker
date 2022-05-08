class UpdateStatDetail {
  final Data data; // Data Pemeriksaan Harian
  final Update update; // Data Perkembangan Harian
  final Total total; // Data Kumulatif

  UpdateStatDetail(
      {required this.data, required this.update, required this.total});

  factory UpdateStatDetail.fromJson(Map<String, dynamic> json) {
    return UpdateStatDetail(
        data: Data.fromJson(json['data']), // Pemeriksaan Harian
        update: Update.fromJson(json['update']), // Pemeriksaan Harian
        total: Total.fromJson(json['total'])); // Kumulatif
  }
}

class Data {
  final String jumlah_odp;
  final String jumlah_pdp;
  final String total_spesimen;
  final String total_spesimen_negatif;

  Data({required this.jumlah_odp, required this.jumlah_pdp, required this.total_spesimen, required this.total_spesimen_negatif});

  factory Data.fromJson(Map<String, dynamic> json) {
    return new Data(
      jumlah_odp: json['jumlah_odp'],
      jumlah_pdp: json['jumlah_pdp'],
      total_spesimen: json['total_spesimen'],
      total_spesimen_negatif: json['total_spesimen_negatif'],
    );
  }
}

class Update {
  final String jumlah_positif;
  final String jumlah_meninggal;
  final String jumlah_sembuh;
  final String jumlah_dirawat;
  final String tanggal;

  Update({required this.jumlah_positif, required this.jumlah_meninggal, required this.jumlah_sembuh, required this.jumlah_dirawat, required this.tanggal});

  factory Update.fromJson(Map<String, dynamic> json) {
    return new Update(
      jumlah_positif: json['jumlah_positif'],
      jumlah_meninggal: json['jumlah_meninggal'],
      jumlah_sembuh: json['jumlah_sembuh'],
      jumlah_dirawat: json['jumlah_dirawat'],
      tanggal: json['tanggal'],
    );
  }
}

class Total {
  final String jumlah_positif_kum;
  final String jumlah_meninggal_kum;
  final String jumlah_sembuh_kum;
  final String jumlah_dirawat_kum;

  Total({required this.jumlah_positif_kum, required this.jumlah_meninggal_kum, required this.jumlah_sembuh_kum, required this.jumlah_dirawat_kum});

  factory Total.fromJson(Map<String, dynamic> json) {
    return new Total(
        jumlah_positif_kum: json['jumlah_positif'],
        jumlah_meninggal_kum: json['jumlah_meninggal'],
        jumlah_sembuh_kum: json['jumlah_sembuh'],
        jumlah_dirawat_kum: json['jumlah_dirawat']
    );
  }
}