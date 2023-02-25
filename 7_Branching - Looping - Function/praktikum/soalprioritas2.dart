import 'dart:io';

void main() {
  print("Soal Prioritas 2");
  print("----------------");
  print("1. Piramida");
  print("2. Jam Pasir");
  print("3. Faktorial");
  print("4. Tugas Function");
  print("---------------------------------------");

  //Silahkan memilih Program mana yang ingin dijalankan pada soal Prioritas 1
  print("Masukkan Nomor yang ingin dijalankan : ");
  var i = int.parse(stdin.readLineSync()!);

  switch (i) {
    case 1:
      print("\n--------");
      print("Piramida");
      print("--------\n");

      for (int i = 1; i <= 8; i++) {
        for (int j = 1; j <= 15; j++) {
          if (j >= 9 - i && j <= 7 + i) {
            stdout.write('*');
          } else {
            stdout.write(' ');
          }
        }
        print(' ');
      }
      break;

    case 2:
      print("\n---------");
      print("Jam Pasir");
      print("---------\n");

      for (int i = 1; i <= 6; i++) {
        for (int j = 1; j <= 11; j++) {
          if (j >= i && j <= 12 - i) {
            stdout.write("*");
          } else {
            stdout.write(' ');
          }
        }
        print('');
      }

      for (int i = 2; i <= 6; i++) {
        for (int j = 1; j <= 11; j++) {
          if (j >= 7 - i && j <= 5 + i) {
            stdout.write('*');
          } else {
            stdout.write(' ');
          }
        }
        print('');
      }
      break;

    case 3:
      print("\n---------");
      print("Faktorial");
      print("---------\n");

      int nomorA = 10;
      int nomorB = 40;
      int nomorC = 50;

      print("Faktorial dari $nomorA adalah ${faktorial(nomorA).toInt()}");
      print("Faktorial dari $nomorB adalah ${faktorial(nomorB)}");
      print("Faktorial dari $nomorC adalah ${faktorial(nomorC)}");
      stdout.writeln();
      break;

    case 4:
      print("\n--------------");
      print("Tugas Function");
      print("--------------\n");

      print("Masukkan jari - jari : ");
      int r = int.parse(stdin.readLineSync()!);
      double lLingkaran = luasLingkaran(r);
      print(
          "Luas Lingkaran dengan jari - jari sebesar $r adalah $lLingkaran\n");
      break;
  }
}

double faktorial(int i) {
  if (i == 0) {
    return 1;
  } else {
    return i * faktorial(i - 1);
  }
}

double luasLingkaran(int r) {
  const phi = 3.14;
  double lLingkaran = phi * r * r;
  return lLingkaran;
}
