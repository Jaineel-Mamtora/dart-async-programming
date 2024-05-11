/// Another Example of Stream.asyncExpand
void main(List<String> args) async {
  final names3Times = getNames().asyncExpand((name) => times3(name));

  await for (final name in names3Times) {
    print(name);
  }
}

Stream<String> getNames() async* {
  yield 'Bob';
  yield 'Alice';
  yield 'Joe';
}

Stream<String> times3(String value) => Stream.fromIterable(
      Iterable<String>.generate(
        3,
        (_) => value,
      ),
    );
