void testAsync() async {
  int result1 = await addNumbers(1, 1);
  int result2 = await addNumbers(2, 2);
  print({
    'result1': result1,
    'result2': result2,
  });
}

Future<int> addNumbers(int num1, int num2) async {
  print('계산시작');
  await Future.delayed(Duration(seconds: 2), () {
    print('계산완료: $num1 + $num2 = ${num1 + num2}');
  });
  return num1 + num2;
}
