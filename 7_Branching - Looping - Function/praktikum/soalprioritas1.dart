import 'dart:io';

void main() {
  //Program ini harus dijalankan melalui Terminal
  //Default extension Dart menjalankannya ke Debug Console
  //Cara mengubah Output dari Debug Console ke Terminal
  //https://stackoverflow.com/questions/71946458/exception-global-evaluation-requires-a-thread-to-have-been-loaded-on-vscode-wh

  print("Soal Prioritas 1");
  print("----------------");
  print("1. Branching");
  print("2. Looping");
  print("---------------------------------------");

  //Silahkan memilih Program mana yang ingin dijalankan pada soal Prioritas 1
  print("Masukkan Nomor yang ingin dijalankan : ");
  var i = int.parse(stdin.readLineSync()!);

  switch (i) {
    case 1:
      print("---------");
      print("Branching");
      print("---------");

      print("Masukkan nilai : ");
      int nilai = int.parse(stdin.readLineSync()!);
      if (nilai > 70) {
        print("\nNilai A");
      } else if (nilai > 40 && nilai <= 70) {
        print("\nNilai B");
      } else if (nilai > 0 && nilai <= 40) {
        print("\nNilai C");
      } else {
        return;
      }
      break;

    case 2:
      print("-------");
      print("Looping");
      print("-------");

      for (int i = 1; i <= 10; i++) {
        print(i);
      }
      break;
  }
}
