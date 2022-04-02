void testClass() {
  Employee seulgi = Employee("슬기");
  Employee chorong = Employee("초롱");

  seulgi.name = '다솜';
  seulgi.printNameAndBuilding();
  chorong.printNameAndBuilding();

  // 모든 인스턴스에서 동일한 building.
  Employee.building = '오투타워';
  seulgi.printNameAndBuilding();
  chorong.printNameAndBuilding();

  Employee.printBuildng();
}

class Employee {
  // 인스턴스에 귀속되지 않고 클래스에 귀속된다.
  static String? building;
  String name;

  Employee(this.name);

  static void printBuildng() {
    print('저희는 모두 $building 건물에서 근무하고 있습니다.');
  }

  void printNameAndBuilding() {
    print('제 이름은 $name입니다. $building 건물에서 근무하고 있습니다.');
  }
}
