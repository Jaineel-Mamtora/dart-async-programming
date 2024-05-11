import 'dart:async';

/// *Stream Transformer*
///
/// It is a class which takes one stream and changes it to another stream
void main(List<String> args) async {
  await for (final capitalizedName in names.getCapitalized) {
    print(capitalizedName);
  }

  print('----------------');

  await for (final capitalizedName in names.getCapitalizedFromMap) {
    print(capitalizedName);
  }
}

Stream<String> names = Stream.fromIterable(
  [
    'Seth',
    'Kathy',
    'Lars',
  ],
);

extension on Stream<String> {
  Stream<String> get getCapitalized => transform(
        ToUpperCase(),
      );

  Stream<String> get getCapitalizedFromMap => map(
        (name) => name.toUpperCase(),
      );
}

class ToUpperCase extends StreamTransformerBase<String, String> {
  @override
  Stream<String> bind(Stream<String> stream) {
    return stream.map(
      (name) => name.toUpperCase(),
    );
  }
}
