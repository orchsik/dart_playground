void testFp() {
  List<Map<String, String>> people = [
    {'name': '로제', 'group': '블랙핑크'},
    {'name': '지수', 'group': '블랙핑크'},
    {'name': 'RM', 'group': 'BTS'},
    {'name': '뷔', 'group': 'BTS'},
  ];

  List<Person> parsedPeople = people
      .map((e) => Person(
            name: e['name'] ?? '',
            group: e['group'] ?? '',
          ))
      .toList();
  print(parsedPeople);
  // [Person(name:로제, group:블랙핑크), Person(name:지수, group:블랙핑크), Person(name:RM, group:BTS), Person(name:뷔, group:BTS)]

  List<Person> bts =
      parsedPeople.where((element) => element.group == 'BTS').toList();
  print(bts); // [Person(name:RM, group:BTS), Person(name:뷔, group:BTS)]
}

// Map을 쓰면 타입을 모른다.
// 데이터 구조의 신뢰성을 위해서 class를 99% 사용해야한다.
class Person {
  final String name;
  final String group;

  Person({required this.name, required this.group});

  @override
  String toString() {
    return 'Person(name:$name, group:$group)';
  }
}
