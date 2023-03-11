import 'dart:io';

class BangunRuang {
  int panjang = 0;
  int lebar = 0;
  int tinggi = 0;

  int volume() {
    return 0;
  }
}

class Kubus extends BangunRuang {
  int sisi = 0;

  Kubus(this.sisi);

  @override
  int volume() {
    int hasil = sisi * sisi * sisi;
    return hasil;
  }
}

class Balok extends BangunRuang {
  Balok(int panjang, int lebar, int tinggi) {
    this.panjang = panjang;
    this.lebar = lebar;
    this.tinggi = tinggi;
  }

  @override
  int volume() {
    int hasil = panjang * lebar * tinggi;
    return hasil;
  }
}

void main() {
  print("Soal Prioritas 1");
  print("----------------------------");
  print("1. Volume Bangun Ruang Kubus");
  print("2. Volume Bangun Ruang Balok");
  print("--------------------------------------");

  print("Masukkan Nomor yang ingin dijalankan : ");
  var i = int.parse(stdin.readLineSync()!);

  switch (i) {
    case 1:
      print("-------------------------");
      print("Volume Bangun Ruang Kubus");
      print("-------------------------");
      print("Masukkan nilai sisi Kubus : ");
      int sisi = int.parse(stdin.readLineSync()!);
      var vKubus = Kubus(sisi);
      print(
          "Hasil dari Volume Kubus dengan sisi sebesar ${vKubus.sisi} adalah ${vKubus.volume()}\n");
      break;

    case 2:
      print("-------------------------");
      print("Volume Bangun Ruang Balok");
      print("-------------------------");
      print("Masukkan nilai panjang : ");
      int panjangBalok = int.parse(stdin.readLineSync()!);
      print("Masukkan nilai lebar : ");
      int lebarBalok = int.parse(stdin.readLineSync()!);
      print("Masukkan nilai tinggi : ");
      int tinggiBalok = int.parse(stdin.readLineSync()!);
      var vBalok = Balok(panjangBalok, lebarBalok, tinggiBalok);
      print(
          "Hasil dari Volume Balok dengan panjang ${vBalok.panjang}, lebar ${vBalok.lebar}, dan tinggi ${vBalok.tinggi} adalah ${vBalok.volume()}\n");
      break;
    default:
  }
}
