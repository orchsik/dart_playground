void testFp() {
  List<int> even = [2, 4, 6, 8];
  List<int> odd = [1, 3, 5, 7];

  List<int> all = [...odd, ...even];
  all.sort();
  print(all);
}
