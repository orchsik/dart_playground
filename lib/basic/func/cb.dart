void cbRun() {
  print(isEvenNumber(1, addOne));
  print(isEvenNumber(2, addOne));
}

bool isEvenNumber(num number, Function? handleNumber) =>
    (handleNumber != null ? handleNumber(number) : number) % 2 == 0;

num addOne(num number) => number + 1;
