import 'dart:io';

void main() {
  //Program ini harus dijalankan melalui Terminal
  //Default extension Dart menjalankannya ke Debug Console
  //Cara mengubah Output dari Debug Console ke Terminal
  //https://stackoverflow.com/questions/71946458/exception-global-evaluation-requires-a-thread-to-have-been-loaded-on-vscode-wh

  print("Soal Prioritas 1");
  print("----------------");
  print("1. Keliling Persegi");
  print("2. Luas Persegi");
  print("3. Keliling Persegi Panjang");
  print("4. Luas Persegi Panjang");
  print("5. Keliling Lingkaran");
  print("6. Luas Lingkaran");
  print("---------------------------------------");

  //Silahkan memilih Program mana yang ingin dijalankan pada soal Prioritas 1
  print("Masukkan Nomor yang ingin dijalankan : ");
  var i = int.parse(stdin.readLineSync()!);

  switch (i) {
    case 1:
      print("----------------");
      print("Keliling Persegi");
      print("----------------");
      print("Masukkan sisi : ");
      int s = int.parse(stdin.readLineSync()!);
      var kPersegi = 4 * s;
      print("Keliling Persegi dengan sisi $s adalah $kPersegi\n");
      break;

    case 2:
      print("------------");
      print("Luas Persegi");
      print("------------");
      print("Masukkan sisi : ");
      int s = int.parse(stdin.readLineSync()!);
      var lPersegi = s * s;
      print("Luas Persegi dengan sisi $s adalah $lPersegi\n");
      break;

    case 3:
      print("------------------------");
      print("Keliling Persegi Panjang");
      print("------------------------");
      print("Masukkan panjang : ");
      int p = int.parse(stdin.readLineSync()!);
      print("Masukkan lebar : ");
      int l = int.parse(stdin.readLineSync()!);
      var kPersegiPanjang = 2 * (p + l);
      print(
          "Keliling Persegi Panjang dengan panjang sebesar $p dan lebar sebesar $l adalah $kPersegiPanjang\n");
      break;

    case 4:
      print("--------------------");
      print("Luas Persegi Panjang");
      print("--------------------");
      print("Masukkan panjang : ");
      int p = int.parse(stdin.readLineSync()!);
      print("Masukkan lebar : ");
      int l = int.parse(stdin.readLineSync()!);
      var lPersegiPanjang = p * l;
      print(
          "Luas Persegi Panjang dengan panjang sebesar $p dan lebar sebesar $l adalah $lPersegiPanjang\n");
      break;

    case 5:
      print("------------------");
      print("Keliling Lingkaran");
      print("------------------");
      const phi = 3.14;
      print("Masukkan jari - jari : ");
      int r = int.parse(stdin.readLineSync()!);
      var kLingkaran = 2 * phi * r;
      print(
          "Keliling Lingkaran dengan jari - jari sebesar $r adalah $kLingkaran\n");
      break;

    case 6:
      print("--------------");
      print("Luas Lingkaran");
      print("--------------");
      const phi = 3.14;
      print("Masukkan jari - jari : ");
      int r = int.parse(stdin.readLineSync()!);
      var lLingkaran = phi * r * r;
      print("Luas Lingkaran dengan jari - jari sebesar $r adalah $lLingkaran\n");
      break;
  }
}
