import 'dart:io';

void main() async {
  print("Soal Prioritas 2");
  print("----------------");
  print("1. Map and List");
  print("2. Pembulatan nilai rata - rata");
  print("3. Faktorial dengan Asinkron");
  print("---------------------------------------");

  print("Masukkan Nomor yang ingin dijalankan : ");
  var i = int.parse(stdin.readLineSync()!);

  switch (i) {
    case 1:
      print("\n---------");
      print("Map and List");
      print("---------\n");

      List dataPelajar = [
        ["Dimas Rizqi Ibadurrahim", "Surabaya"],
        ["Killjoy", "Malang"],
        ["T'Challa", "Wakanda"],
        ["Billie Elish", "Nganjuk"]
      ];

      var murid = {};
      for (var i in dataPelajar) {
        murid[i[0]] = i[1];
      }
      print(murid);

      for (var j in murid.keys) {
        print("$j berasal dari ${murid[j]}");
      }
      break;

    case 2:
      print("\n----------------------------");
      print("Pembulatan nilai rata - rata");
      print("----------------------------\n");

      var values = [
        {"nilai": 7},
        {"nilai": 5},
        {"nilai": 3},
        {"nilai": 5},
        {"nilai": 2},
        {"nilai": 1},
      ];

      var result = values.map((m) => m["nilai"]).reduce((a, b) => a! + b!)! /
          values.length;
      print(values);
      print("");
      print("Hasil rata - rata $result");
      print("Hasil pembulatan rata - rata ${result.ceil()}");
      break;

    case 3:
      print("\n---------");
      print("Faktorial Async");
      print("---------\n");

      int angka = 5;

      print("Faktorial dari $angka adalah ${await faktorial(angka)}");
      stdout.writeln();
      break;

    case 4:
      break;
  }
}

Future<int> fungsiDelay() {
  return Future.delayed(const Duration(seconds: 1), () => 1);
}

Future<int> faktorial(int faktor) async {
  int trigger = await fungsiDelay();
  for (int i = 1; i <= faktor; i++) {
    trigger *= i;
  }
  return trigger;
}
