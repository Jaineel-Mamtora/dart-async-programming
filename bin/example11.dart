/// Convert Stream to Future
///
/// Here, using `toList()` method to convert Stream to Future
/// which returns a List
void main(List<String> args) async {
  final allNames = await getNames().toList();
  for (var name in allNames) {
    print(name);
  }
}

Stream<String> getNames() async* {
  yield 'John';
  yield 'Jane';
  yield 'Jack';
}
