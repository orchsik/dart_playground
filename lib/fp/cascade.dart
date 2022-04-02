import 'dart:html';

void testFp() {
  List<int> even = [2, 4, 6, 8];
  List<int> odd = [1, 3, 5, 7];

  List<int> all = [...odd, ...even];
  all.sort();
  print(all);
}

void testCascade() {
  var button = querySelector('#confim');
  button?.text = 'Confirm';
  button?.classes.add('important');
  button?.onClick.listen((event) => window.alert('Confrimed!'));

// Although it still invokes someMethod() on myObject, the result of the
// expression isn’t the return value — it’s a reference to myObject!
// ```dart
// myObject..someMethod()
// ```
  querySelector('#confirm')
    ?..text = 'Confirm'
    ..classes.add('important')
    ..onClick.listen((event) => window.alert('confirmied'));
}
