void testFp() {
  List<String> blackPink = ['로제', '지수', '리사', '제니'];
  print(blackPink);

  final newBlackPink = blackPink.map((x) {
    return '블랙핑크 $x';
  });
  print(newBlackPink);

  final newBlackPink2 = blackPink.map((e) => '블랙핑크 $e');
  print(newBlackPink2);

  // map을 쓰면 새로운 리스트를 만든다.
  print(blackPink == blackPink); // true
  print(blackPink == newBlackPink); // false
  print(blackPink == newBlackPink2); // false

  String number = '1234';
  final parsed = number.split('').map((e) => '$e.jpg').toList();
  print(parsed); // [1.jpg, 2.jpg, 3.jpg, 4.jpg]
}
