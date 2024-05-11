/// Dart Streams
void main(List<String> args) async {
  await for (var number in getNumbers()) {
    print(number);
  }

  try {
    await for (var name in getNames()) {
      print(name);
    }
  } catch (e) {
    print(e);
  }
}

Stream<int> getNumbers() async* {
  for (var i = 0; i < 10; i++) {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    yield i;
  }
}

Stream<String> getNames() async* {
  await Future.delayed(const Duration(seconds: 1));
  yield 'John';
  throw Exception('Something went wrong');
  // yield 'Doe'; // Dead code. Try removing the code, or fixing the code before it so that it can be reached.
}
