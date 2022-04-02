void testClass() {
  Lecture<String> lecture1 = Lecture("1", 'lecture');
  lecture1.printIdType();

  Lecture<int> lecture2 = Lecture(2, 'lecture');
  lecture2.printIdType();
}

// generic - 타입을 외부에서 받는다.
class Lecture<T> {
  final T id;
  final String name;
  Lecture(this.id, this.name);

  void printIdType() {
    print(id.runtimeType);
  }
}
