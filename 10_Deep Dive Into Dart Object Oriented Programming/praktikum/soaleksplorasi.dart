import 'dart:io';

class Shape {
  int getArea() {
    return 0;
  }

  int getPerimeter() {
    return 0;
  }
}

class Square implements Shape {
  int side = 0;

  Square(this.side);

  @override
  int getArea() {
    int luas = side * side;
    return luas;
  }

  @override
  int getPerimeter() {
    int keliling = 4 * side;
    return keliling;
  }
}

class Rectangle implements Shape {
  int height = 0;
  int width = 0;

  Rectangle(this.height, this.width);

  @override
  int getArea() {
    int luas = height * width;
    return luas;
  }

  @override
  int getPerimeter() {
    int keliling = 2 * (height + width);
    return keliling;
  }
}

class Circle implements Shape {
  int radius = 0;
  double phi = 3.14;

  Circle(this.radius);

  @override
  int getArea() {
    double luas = phi * radius * radius;
    return luas.toInt().ceil();
  }

  @override
  int getPerimeter() {
    double keliling = 2 * phi * radius;
    return keliling.toInt().ceil();
  }
}

void main() {
  print("Soal Eksplorasi");
  print("----------------");
  print("1. Keliling Persegi");
  print("2. Luas Persegi");
  print("3. Keliling Persegi Panjang");
  print("4. Luas Persegi Panjang");
  print("5. Keliling Lingkaran");
  print("6. Luas Lingkaran");
  print("---------------------------------------");
  print("Masukkan Nomor yang ingin dijalankan : ");
  var i = int.parse(stdin.readLineSync()!);

  switch (i) {
    case 1:
      print("----------------");
      print("Keliling Persegi");
      print("----------------");
      print("Masukkan sisi : ");
      int side = int.parse(stdin.readLineSync()!);

      var persegi = Square(side);

      print(
          "Keliling Persegi dengan sisi $side adalah ${persegi.getPerimeter()}\n");
      break;

    case 2:
      print("----------------");
      print("Luas Persegi");
      print("----------------");
      print("Masukkan sisi : ");
      int side = int.parse(stdin.readLineSync()!);

      var persegi = Square(side);

      print("Luas Persegi dengan sisi $side adalah ${persegi.getArea()}\n");
      break;

    case 3:
      print("------------------------");
      print("Keliling Persegi Panjang");
      print("------------------------");
      print("Masukkan panjang : ");
      int height = int.parse(stdin.readLineSync()!);
      print("Masukkan lebar : ");
      int width = int.parse(stdin.readLineSync()!);

      var persegiPanjang = Rectangle(height, width);

      print(
          "Keliling Persegi Panjang dengan panjang sebesar $height dan lebar sebesar $width adalah ${persegiPanjang.getPerimeter()}\n");
      break;

    case 4:
      print("--------------------");
      print("Luas Persegi Panjang");
      print("--------------------");
      print("Masukkan panjang : ");
      int height = int.parse(stdin.readLineSync()!);
      print("Masukkan lebar : ");
      int width = int.parse(stdin.readLineSync()!);

      var persegiPanjang = Rectangle(height, width);

      print(
          "Luas Persegi Panjang dengan panjang sebesar $height dan lebar sebesar $width adalah ${persegiPanjang.getArea()}\n");
      break;

    case 5:
      print("------------------");
      print("Keliling Lingkaran");
      print("------------------");
      print("Masukkan jari - jari : ");
      int radius = int.parse(stdin.readLineSync()!);

      var lingkaran = Circle(radius);
      print(
          "Keliling Lingkaran dengan jari - jari sebesar $radius adalah ${lingkaran.getPerimeter()}\n");
      break;

    case 6:
      print("--------------");
      print("Luas Lingkaran");
      print("--------------");
      print("Masukkan jari - jari : ");
      int radius = int.parse(stdin.readLineSync()!);

      var lingkaran = Circle(radius);
      print(
          "Luas Lingkaran dengan jari - jari sebesar $radius adalah ${lingkaran.getArea()}\n");
      break;
  }
}
