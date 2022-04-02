void nullSafetyRun() {
  int? number;
  // var result = (number == null ? 100 : number) + 1;
  var result = (number ?? 100) + 1;

  print({
    'number': number,
    'result': result,
  });
}
