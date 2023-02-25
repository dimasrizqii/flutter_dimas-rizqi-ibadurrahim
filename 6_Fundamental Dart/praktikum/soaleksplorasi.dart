import 'dart:io';

void main() {
  //Program ini harus dijalankan melalui Terminal
  //Default extension Dart menjalankannya ke Debug Console
  //Cara mengubah Output dari Debug Console ke Terminal
  //https://stackoverflow.com/questions/71946458/exception-global-evaluation-requires-a-thread-to-have-been-loaded-on-vscode-wh

  print("Soal Eksplorasi");
  print("----------------");
  print("1. Palindrom");
  print("2. Bilangan Faktor");
  print("---------------------------------------");

  //Silahkan memilih Program mana yang ingin dijalankan pada soal Eksplorasi
  print("Masukkan Nomor yang ingin dijalankan : ");
  var i = int.parse(stdin.readLineSync()!);

  switch (i) {
    case 1:
      print("\n---------------------------------------");
      print("Palindrom");
      print("---------------------------------------");
      print("\nMasukkan kata yang ingin dicek : \n");
      String palindrom = stdin.readLineSync()!;
      cekPalindrom(palindrom) ? print("\nKata Palindrom\n") : print("\nBukan Kata Palindrom\n");
      break;

    case 2:
      print("\n------------");
      print("Bilangan Faktor");
      print("------------");
      print("\nMasukkan bilangan faktor : ");
      int bFaktor = int.parse(stdin.readLineSync()!);
      List<int> hasil = [];

      for (int i = 1; i <= bFaktor; i++) {
        if (bFaktor % i == 0) {
          hasil.add(i);
        }
      }
      print("\nFaktor dari $bFaktor adalah $hasil\n");
      break;
  }
}

bool cekPalindrom(String palindrom) {
  return palindrom == palindrom.split("").reversed.join();
}
