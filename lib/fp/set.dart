void testFp() {
  Set<String> blackpink = {
    '로제',
    '지수',
    '제니',
    '리사',
  };

  Set<String> result = blackpink.map((e) => '블핑 $e').toSet();
  print(result); //{블핑 로제, 블핑 지수, 블핑 제니, 블핑 리사}
}
