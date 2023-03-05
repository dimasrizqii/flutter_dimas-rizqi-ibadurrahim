class Hewan {
  String nama = "Hewan";
  int beratBadan = 0;
}

class Sapi extends Hewan {
  Sapi() {
    nama = "Sapi";
    beratBadan = 10;
  }
}

class Ayam extends Hewan {
  Ayam() {
    nama = "Ayam";
    beratBadan = 3;
  }
}

class Mobil {
  int maksimumBerat = 20;

  List<Hewan> muatan = [];

  void tambahMuatan(Hewan binatang) {
    if (maksimumBerat >= binatang.beratBadan) {
      maksimumBerat -= binatang.beratBadan;
      print('${binatang.nama} berhasil menambahkan hewan kedalam mobil');
    } else {
      print('${binatang.nama} tidak masuk karena Mobil Terlalu Penuh');
    }
  }
}

void main() {
  var s1 = Sapi();
  var a1 = Ayam();
  var m1 = Mobil();

  m1.tambahMuatan(s1);
  m1.tambahMuatan(a1);
  m1.tambahMuatan(a1);
  m1.tambahMuatan(s1);
}
