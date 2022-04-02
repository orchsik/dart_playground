void constRun() {
  const double pi = 3.14; // on complie
  final double temparature = 12; // on running

  const List<String> constNames = ["철수", "영미", "수미"]; // cannot change inside
  final List<String> finalNames = ["철수", "영미", "수미"]; // can change inside

  try {
    // pi = 12;
    // temparature = 1;

    // constNames.add(
    //     "value"); // UnsupportedError (Unsupported operation: Cannot add to an unmodifiable list)

    print('success');
  } catch (e) {
    print(e);
  }
}
