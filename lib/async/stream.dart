import 'dart:async';

void testAsync() {
  // calcuate(1).listen((event) {
  //   print('cacluated(1): $event');
  // });

  // calcuate(2).listen((event) {
  //   print('cacluated(2): $event');
  // });

  playAllStream().listen((event) {
    print(event);
  });
}

Stream<int> playAllStream() async* {
  // yield* = steram이 끝나기를 기다린 후, 다음 로직 스타트.
  yield* calcuate(1);
  yield* calcuate(1000);
}

Stream<int> calcuate(int num) async* {
  for (int i = 0; i < 5; i++) {
    yield i * num;

    await Future.delayed(Duration(seconds: 1));
  }
}
