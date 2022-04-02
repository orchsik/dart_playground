void describeIdol(Idol idol) {
  print('----- ${idol.runtimeType} -----');
  idol.sayName();
  idol.sayMemberCount();
}

void testClass() {
  Idol apink = Idol(name: '에이2핑크', memberCount: 5);
  describeIdol(apink);
  BoyGroup boyGroup = BoyGroup(name: 'BTS', memberCount: 7);
  describeIdol(boyGroup);
  GrilGroup redVelvet = GrilGroup(name: '레드벨벳', memberCount: 5);
  describeIdol(redVelvet);
}

class Idol {
  String name;
  int memberCount;
  Idol({
    required this.name,
    required this.memberCount,
  });

  void sayName() {
    print('저희는 ${this.name} 입니다.');
  }

  void sayMemberCount() {
    print('${this.name}은 ${this.memberCount}명의 멤버가 있습니다.');
  }
}

class BoyGroup extends Idol {
  BoyGroup({required String name, required int memberCount})
      : super(name: name, memberCount: memberCount);

  void sayMale() {
    print('저희는 남자 아이돌입니다.');
  }
}

class GrilGroup extends Idol {
  GrilGroup({required String name, required int memberCount})
      : super(name: name, memberCount: memberCount);

  void sayFemle() {
    print('저희는 여자 아이돌입니다.');
  }
}
