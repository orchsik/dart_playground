void describeIdol(Idol idol) {
  idol.sayHello();
  idol.introduce();

  // blackPink.firstMember = '아이유';
  print({
    "firstMember",
    idol.firstMember,
  });
}

void testClass() {
  Idol blackPink = Idol('블랙핑크', ['지수', '제니', '리사', '로제']);
  describeIdol(blackPink);
  // Idol blackPink2 = Idol('블랙핑크', ['지수', '제니', '리사', '로제']);
  // const constructor로 생성하면 **같은** 인스턴스가 된다 !!!
  // print(blackPink2 == blackPink);

  Idol bts = Idol.fromList([
    'BTS',
    ['RM', '진', '슈가', '제이홉', '뷔', '정국']
  ]);
  describeIdol(bts);
}

class Idol {
  final String name;
  final List<String> members;

  // Idol(String name, List<String> members)
  //     : this.name = name,
  //       this.members = members;
  // const 키워드를 사용하면 생성자 인자도 const 하게 제어가능.
  Idol(this.name, this.members);

  Idol.fromList(List values)
      : this.name = values[0],
        this.members = values[1];

  String get firstMember {
    return this.members[0];
  }

  // final 키워드를 사용하는 immutable한 프로그래밍이 보편적이므로 setter 잘 안씀.
  // set firstMember(String name) {
  //   this.members[0] = name;
  // }

  void sayHello() {
    print('안녕하세요 ${this.name}입니다.');
  }

  void introduce() {
    print(
        "저희 멤버는 ${filterBracket(this.members.map((e) => e).toString())}가 있습니다");
  }

  String filterBracket(String str) {
    return str.replaceAll(RegExp(r'\(|\)'), '');
  }
}
