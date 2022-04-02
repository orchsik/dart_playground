void testFp() {
  List<String> blackPink = ['로제', '로제', '지수', '리사', '제니'];

  print(blackPink); // [로제, 로제, 지수, 리사, 제니]
  print(blackPink.asMap()); // {0: 로제, 1: 로제, 2: 지수, 3: 리사, 4: 제니}
  print(blackPink.toSet()); // {로제, 지수, 리사, 제니}

  Map blackPinkMap = blackPink.asMap();
  print(blackPinkMap.keys.toList()); // [0, 1, 2, 3, 4]
  print(blackPinkMap.values.toList()); // [로제, 로제, 지수, 리사, 제니]

  // Set blackPinkSet = blackPink.toSet();
  Set blackPinkSet = Set.from(blackPink);
  print(blackPinkSet.toList()); // [로제, 지수, 리사, 제니]
}
