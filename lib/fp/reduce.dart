void testFp() {
  List<int> nums = [1, 3, 5, 7];

  int result = nums.reduce((prev, next) {
    print({'prev': prev, 'next': next});
    /**
      {prev: 1, next: 3}
      {prev: 4, next: 5}
      {prev: 9, next: 7}
    */
    return prev + next;
  });
  print(result);

  List<String> words = ['안녕하세요. ', '저는 ', '짱구입니다.'];
  String sentence = words.reduce((value, element) => value + element);
  print(sentence); // 안녕하세요. 저는 짱구입니다.

  // reduce는 element의 타입과 같은 타입을 리턴해야 한다.
  // int totalLength = words.reduce((value, element) => value.length + element.length);
}
