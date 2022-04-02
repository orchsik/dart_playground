void testFp() {
  List<int> nums = [1, 3, 5, 7];

  int sum = nums.fold(0, (previousValue, element) => previousValue + element);
  print(sum); // 16

  List<String> words = ['안녕하세요. ', '저는 ', '짱구입니다.'];
  String sentence =
      words.fold('', (previousValue, element) => previousValue + element);
  print(sentence); // 안녕하세요. 저는 짱구입니다.

  int totalLength =
      words.fold(0, (previousValue, element) => previousValue + element.length);
  print(totalLength); // 16
}
