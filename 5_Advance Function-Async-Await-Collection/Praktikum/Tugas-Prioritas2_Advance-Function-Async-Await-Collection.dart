import 'dart:io';

void main(List<String> arguments) {
  List<List<int>> myList = [
    [0, 1],
    [3, 4],
    [6, 8]
  ];

  // // manggil list di inedex 1
  List<int> pertama = myList[1];
  print(pertama);

  //convert list to map
  Map map = {for (var item in myList) '$item': '$item'};
  print(map);

  //Menghitung rata rata
  int total = 0;
  List<int> nilai = [];
  int input = stdin.readLineSync();
  nilai.add(input);

  //print hasil input
  nilai.forEach((hasil) => print(hasil));

  //menjumlahkan nilai di dlm list
  for (int hasil in nilai) {
    total += hasil;
    print('$total');
    ;

    //menjumlahkan nilai di dlm list
  }
}
