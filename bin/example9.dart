import 'dart:async';

/// *Stream Controllers*
///
/// Stream Controllers provide read and write functionality
/// Streams on the other hand, provide just read functionality

void main(List<String> args) async {
  final controller = StreamController<String>();
  controller.sink.add('Hello');
  controller.sink.add('World');

  await for (final value in controller.stream) {
    print(value);
  }

  controller.close();
}
