import 'dart:io';

void main() {
  //Program ini harus dijalankan melalui Terminal
  //Default extension Dart menjalankannya ke Debug Console
  //Cara mengubah Output dari Debug Console ke Terminal
  //https://stackoverflow.com/questions/71946458/exception-global-evaluation-requires-a-thread-to-have-been-loaded-on-vscode-wh

  print("Soal Prioritas 2");
  print("----------------");
  print("1. 3 Variabel yang memuat tipe data String");
  print("2. Rumus Volume Tabung");
  print("---------------------------------------");

  //Silahkan memilih Program mana yang ingin dijalankan pada soal Prioritas 1
  print("Masukkan Nomor yang ingin dijalankan : ");
  var i = int.parse(stdin.readLineSync()!);

  switch (i) {
    case 1:
      print("---------------------------------------");
      print("3 Variabel yang memuat tipe data String");
      print("---------------------------------------");
      print("Masukkan nama awal");
      String awal = stdin.readLineSync()!;
      print("\nMasukkan nama tengah");
      String tengah = stdin.readLineSync()!;
      print("\nMasukkan nama akhir");
      String akhir = stdin.readLineSync()!;
      print("\nHalo! Namaku $awal $tengah $akhir\n");
      break;

    case 2:
      print("------------");
      print("Volume Tabung");
      print("------------");
      const phi = 3.14;
      print("Masukkan jari - jari : ");
      int r = int.parse(stdin.readLineSync()!);
      print("Masukkan tinggi : ");
      int t = int.parse(stdin.readLineSync()!);
      var vTabung = phi * r * t;
      print(
          "Volume Tabung dengan jari - jari sebesar $r dan tinggi sebesar $t adalah $vTabung\n");
      break;
  }
}
