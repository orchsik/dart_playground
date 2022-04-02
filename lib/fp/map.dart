void testFp() {
  Map<String, String> harryPorter = {
    'Harry Potter': '해리 포터',
    'Ron Weasley': '론 위즐리',
    'Hermione Granger': '헤르미온느 그레인저',
  };

  final result = harryPorter.map((key, value) =>
      MapEntry('Harry Potter Character $key', '해리포터 캐릭터 $value'));

  print(harryPorter);
  // {Harry Potter: 해리 포터, Ron Weasley: 론 위즐리, Hermione Granger: 헤르미온느 그레인저}
  print(result);
  // {Harry Potter Character Harry Potter: 해리포터 캐릭터 해리 포터, Harry Potter Character Ron Weasley: 해리포터 캐릭터 론 위즐리, Harry Potter Character Hermione Granger: 해리포터 캐릭터 헤르미온느 그레인저}

  List<String> keys = harryPorter.keys.map((e) => 'HPC $e').toList();
  List<String> values = harryPorter.values.map((e) => '해리포터 $e').toList();
  print(keys);
  // [HPC Harry Potter, HPC Ron Weasley, HPC Hermione Granger]
  print(values);
  // [해리포터 해리 포터, 해리포터 론 위즐리, 해리포터 헤르미온느 그레인저]
}
