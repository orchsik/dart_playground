import 'package:dart_playground/app.dart';
import 'package:hotreloader/hotreloader.dart';

Future<void> main(List<String> arguments) async {
  final reloader = await HotReloader.create(
    // debounceInterval: Duration(
    //     seconds:
    //         2), // wait up to 2 seconds after file change before reloading
    // onBeforeReload: (ctx) =>
    //   ctx.isolate.name != 'foobar' && // never reload the isolate named 'foobar'
    // ctx.event?.path.contains('/mymodel/')) ?? true, // only perform reload when dart files under ../mymodel/ are changed
    onAfterReload: (ctx) {
      // print('=== Hot-reload result: ${ctx.result}');
      print('===');
      run();
    },
  );

  // ... your other code

  await reloader.reloadCode(); // programmatically trigger code reload

  // ... your other code

  // cleanup
  // reloader.stop();
}
