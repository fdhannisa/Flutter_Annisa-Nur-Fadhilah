abstract class Matematika {
  int x;
  int y;

  int hasil(int x, int y) {
    return 0;
  }
}

class FPB implements Matematika {
  FPB(int x, int y) : super(x, y);

  @override
  int hasil(int x, int y) {
    while (y != 0) {
      int temp = y;
      y = x % y;
      x = temp;
    }
    return x;
  }
}
