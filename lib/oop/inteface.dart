void testClass() {
  BoyGroup bts = BoyGroup('BTS');
  Girlgroup redVelvet = Girlgroup('레드벨벳');
  bts.sayName();
  redVelvet.sayName();

  print(bts is IdolInterface);
  print(bts.runtimeType);
}

// interface / 다트는 class 키워드로 인터페이스를 만든다.
abstract class IdolInterface {
  String name;
  IdolInterface(this.name);
  void sayName();
}

class BoyGroup implements IdolInterface {
  @override
  String name;

  BoyGroup(this.name);

  @override
  void sayName() {
    print('제 이름은 $name 입니다.');
  }
}

class Girlgroup implements IdolInterface {
  @override
  String name;

  Girlgroup(this.name);

  @override
  void sayName() {
    print('제 이름은 $name 입니다.');
  }
}
