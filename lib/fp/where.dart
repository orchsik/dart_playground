void testFp() {
  List<Map<String, String>> people = [
    {'name': '로제', 'group': '블랙핑크'},
    {'name': '지수', 'group': '블랙핑크'},
    {'name': 'RM', 'group': 'BTS'},
    {'name': '뷔', 'group': 'BTS'},
  ];

  // filter 처리됨.
  List<Map<String, String>> blackpink =
      people.where((element) => element['group'] == '블랙핑크').toList();
  print(blackpink); // [{name: 로제, group: 블랙핑크}, {name: 지수, group: 블랙핑크}]
}
