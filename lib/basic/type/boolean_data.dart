void booleanRun() {
  bool trueFalse = true;
  String str = "짱구";
  String emptyStr = "";

  try {
    assert(true);
    // assert(false);
    assert(str == "짱구");
    // assert(str == "철수");
    assert(emptyStr.isEmpty);
    // assert(emptyStr.isNotEmpty);
  } catch (e) {
    print(e);
  }

  print({
    "trueFalse": trueFalse,
  });
}
