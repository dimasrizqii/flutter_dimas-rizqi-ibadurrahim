import 'dart:io';

Future<List> assignList(int perkalian, List angka) async {
  return Future.delayed(Duration(seconds: 1), () {
    List<int> hasilPerkalian = [];
    for (int i = 0; i < angka.length; i++) {
      hasilPerkalian.add(angka[i] * perkalian);
    }

    return hasilPerkalian;
  });
}

void main() async {
  List<int> totalAngka = [];

  print("Angka pengali : ");
  int perkalian = int.parse(stdin.readLineSync()!);

  print("Berapa banyak angka yang ingin dibuat? : ");
  int count = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < count; i++) {
    print("Masukkan angka nomor ${i + 1} : ");
    totalAngka.add(int.parse(stdin.readLineSync()!));
  }

  print("---------------------------");
  print("List awal : $totalAngka");
  print("Dikalikan dengan $perkalian");
  print("---------------------------");
  print("Hasil perkalian : ${await assignList(perkalian, totalAngka)}");
}
