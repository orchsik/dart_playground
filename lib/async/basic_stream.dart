import 'dart:async';

void testAsync() {
  basicSream();
}

void basicSream() {
  final controller = StreamController();
  Stream stream = controller.stream.asBroadcastStream();

  StreamSubscription streamListener1 =
      stream.where((event) => event % 2 == 1).listen((event) {
    print({'lisnter1': event});
  });
  StreamSubscription streamListener2 =
      stream.where((event) => event % 2 == 0).listen((event) {
    print({'lisnter2': event});
  });

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
}
