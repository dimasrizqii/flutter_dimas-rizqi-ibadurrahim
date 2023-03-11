class Matematika {
  int hasil() {
    return 0;
  }
}

class KelipatanPersekutuanTerkecil implements Matematika {
  int x;
  int y;

  KelipatanPersekutuanTerkecil(this.x, this.y);

  @override
  int hasil() {
    var z = 0;
    for (var i = 0; i <= y; i++) {
      z += x;
      if (z % y == 0) {
        break;
      }
    }
    return z;
  }
}

class FaktorPersekutuanTerbesar implements Matematika {
  int x;
  int y;

  FaktorPersekutuanTerbesar(this.x, this.y);

  @override
  int hasil() {
    int z = 0;
    while (y != 0) {
      z = x % y;
      x = y;
      y = z;
    }
    return x;
  }
}

void main() {
  var operation = KelipatanPersekutuanTerkecil(10, 4);
  print(operation.hasil());

  var operation1 = FaktorPersekutuanTerbesar(20, 12);
  print(operation1.hasil());
}
