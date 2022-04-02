void numRun() {
  num numOne = 10;
  num numTwo = 1.1;
  int numInt = 10;
  double numDouble = 1.23;

  print({
    "numOne": numOne,
    "numTwo": numTwo,
    "numInt": numInt,
    "numDouble": numDouble,
  });

  numOne = numOne + 3;
  print({"numOne": numOne});
  numOne += 3;
  print({"numOne": numOne});
  numOne *= 2;
  print({"numOne": numOne});
}
