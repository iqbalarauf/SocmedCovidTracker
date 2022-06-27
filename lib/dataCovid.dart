class Covid {
  Data? data;
  Update? update;

  Covid({this.data, this.update});

  Covid.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    update =
        json['update'] != null ? new Update.fromJson(json['update']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    if (this.update != null) {
      data['update'] = this.update!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  int? jumlahOdp;
  int? jumlahPdp;
  int? totalSpesimen;
  int? totalSpesimenNegatif;

  Data(
      {this.id,
      this.jumlahOdp,
      this.jumlahPdp,
      this.totalSpesimen,
      this.totalSpesimenNegatif});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    jumlahOdp = json['jumlah_odp'];
    jumlahPdp = json['jumlah_pdp'];
    totalSpesimen = json['total_spesimen'];
    totalSpesimenNegatif = json['total_spesimen_negatif'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['jumlah_odp'] = this.jumlahOdp;
    data['jumlah_pdp'] = this.jumlahPdp;
    data['total_spesimen'] = this.totalSpesimen;
    data['total_spesimen_negatif'] = this.totalSpesimenNegatif;
    return data;
  }
}

class Update {
  Penambahan? penambahan;
  List<Harian>? harian;
  Total? total;

  Update({this.penambahan, this.harian, this.total});

  Update.fromJson(Map<String, dynamic> json) {
    penambahan = json['penambahan'] != null
        ? new Penambahan.fromJson(json['penambahan'])
        : null;
    if (json['harian'] != null) {
      harian = <Harian>[];
      json['harian'].forEach((v) {
        harian!.add(new Harian.fromJson(v));
      });
    }
    total = json['total'] != null ? new Total.fromJson(json['total']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.penambahan != null) {
      data['penambahan'] = this.penambahan!.toJson();
    }
    if (this.harian != null) {
      data['harian'] = this.harian!.map((v) => v.toJson()).toList();
    }
    if (this.total != null) {
      data['total'] = this.total!.toJson();
    }
    return data;
  }
}

class Penambahan {
  int? jumlahPositif;
  int? jumlahMeninggal;
  int? jumlahSembuh;
  int? jumlahDirawat;
  String? tanggal;
  String? created;

  Penambahan(
      {this.jumlahPositif,
      this.jumlahMeninggal,
      this.jumlahSembuh,
      this.jumlahDirawat,
      this.tanggal,
      this.created});

  Penambahan.fromJson(Map<String, dynamic> json) {
    jumlahPositif = json['jumlah_positif'];
    jumlahMeninggal = json['jumlah_meninggal'];
    jumlahSembuh = json['jumlah_sembuh'];
    jumlahDirawat = json['jumlah_dirawat'];
    tanggal = json['tanggal'];
    created = json['created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['jumlah_positif'] = this.jumlahPositif;
    data['jumlah_meninggal'] = this.jumlahMeninggal;
    data['jumlah_sembuh'] = this.jumlahSembuh;
    data['jumlah_dirawat'] = this.jumlahDirawat;
    data['tanggal'] = this.tanggal;
    data['created'] = this.created;
    return data;
  }
}

class Harian {
  String? keyAsString;
  int? key;
  int? docCount;
  JumlahMeninggal? jumlahMeninggal;
  JumlahMeninggal? jumlahSembuh;
  JumlahMeninggal? jumlahPositif;
  JumlahMeninggal? jumlahDirawat;
  JumlahMeninggal? jumlahPositifKum;
  JumlahMeninggal? jumlahSembuhKum;
  JumlahMeninggal? jumlahMeninggalKum;
  JumlahMeninggal? jumlahDirawatKum;

  Harian(
      {this.keyAsString,
      this.key,
      this.docCount,
      this.jumlahMeninggal,
      this.jumlahSembuh,
      this.jumlahPositif,
      this.jumlahDirawat,
      this.jumlahPositifKum,
      this.jumlahSembuhKum,
      this.jumlahMeninggalKum,
      this.jumlahDirawatKum});

  Harian.fromJson(Map<String, dynamic> json) {
    keyAsString = json['key_as_string'];
    key = json['key'];
    docCount = json['doc_count'];
    jumlahMeninggal = json['jumlah_meninggal'] != null
        ? new JumlahMeninggal.fromJson(json['jumlah_meninggal'])
        : null;
    jumlahSembuh = json['jumlah_sembuh'] != null
        ? new JumlahMeninggal.fromJson(json['jumlah_sembuh'])
        : null;
    jumlahPositif = json['jumlah_positif'] != null
        ? new JumlahMeninggal.fromJson(json['jumlah_positif'])
        : null;
    jumlahDirawat = json['jumlah_dirawat'] != null
        ? new JumlahMeninggal.fromJson(json['jumlah_dirawat'])
        : null;
    jumlahPositifKum = json['jumlah_positif_kum'] != null
        ? new JumlahMeninggal.fromJson(json['jumlah_positif_kum'])
        : null;
    jumlahSembuhKum = json['jumlah_sembuh_kum'] != null
        ? new JumlahMeninggal.fromJson(json['jumlah_sembuh_kum'])
        : null;
    jumlahMeninggalKum = json['jumlah_meninggal_kum'] != null
        ? new JumlahMeninggal.fromJson(json['jumlah_meninggal_kum'])
        : null;
    jumlahDirawatKum = json['jumlah_dirawat_kum'] != null
        ? new JumlahMeninggal.fromJson(json['jumlah_dirawat_kum'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key_as_string'] = this.keyAsString;
    data['key'] = this.key;
    data['doc_count'] = this.docCount;
    if (this.jumlahMeninggal != null) {
      data['jumlah_meninggal'] = this.jumlahMeninggal!.toJson();
    }
    if (this.jumlahSembuh != null) {
      data['jumlah_sembuh'] = this.jumlahSembuh!.toJson();
    }
    if (this.jumlahPositif != null) {
      data['jumlah_positif'] = this.jumlahPositif!.toJson();
    }
    if (this.jumlahDirawat != null) {
      data['jumlah_dirawat'] = this.jumlahDirawat!.toJson();
    }
    if (this.jumlahPositifKum != null) {
      data['jumlah_positif_kum'] = this.jumlahPositifKum!.toJson();
    }
    if (this.jumlahSembuhKum != null) {
      data['jumlah_sembuh_kum'] = this.jumlahSembuhKum!.toJson();
    }
    if (this.jumlahMeninggalKum != null) {
      data['jumlah_meninggal_kum'] = this.jumlahMeninggalKum!.toJson();
    }
    if (this.jumlahDirawatKum != null) {
      data['jumlah_dirawat_kum'] = this.jumlahDirawatKum!.toJson();
    }
    return data;
  }
}

class JumlahMeninggal {
  int? value;

  JumlahMeninggal({this.value});

  JumlahMeninggal.fromJson(Map<String, dynamic> json) {
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    return data;
  }
}

class Total {
  int? jumlahPositif;
  int? jumlahDirawat;
  int? jumlahSembuh;
  int? jumlahMeninggal;

  Total(
      {this.jumlahPositif,
      this.jumlahDirawat,
      this.jumlahSembuh,
      this.jumlahMeninggal});

  Total.fromJson(Map<String, dynamic> json) {
    jumlahPositif = json['jumlah_positif'];
    jumlahDirawat = json['jumlah_dirawat'];
    jumlahSembuh = json['jumlah_sembuh'];
    jumlahMeninggal = json['jumlah_meninggal'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['jumlah_positif'] = this.jumlahPositif;
    data['jumlah_dirawat'] = this.jumlahDirawat;
    data['jumlah_sembuh'] = this.jumlahSembuh;
    data['jumlah_meninggal'] = this.jumlahMeninggal;
    return data;
  }
}
