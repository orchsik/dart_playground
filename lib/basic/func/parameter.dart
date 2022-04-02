void parameterRun() {
  print({
    "newNum1": newNum(321),
    "newNum2": newNum2(),
    "newNum3": newNum3(321, num2: 444),
  });
}

// [int? number] : number 인자는 생략할 수 있다.
int newNum(int num1, [int? num2]) {
  return 123 + num1 + (num2 ?? 0);
}

// named 파라미터.
int newNum2({int num1 = 321, int num2 = 0}) {
  return 123 + num1 + num2;
}

// 짬뽕
int newNum3(int num1, {int num2 = 0}) {
  return 123 + num1 + num2;
}
