import 'package:test/test.dart';
import 'package:trak/trak.dart';

void main() {
  final exampleEntries = [
    Entry(
      timestamp: DateTime(2000),
      rating: 0.5,
      associates: const ['a', 'b', 'c'],
      misc: 'Other stuff.',
    ),
    Entry(
      timestamp: DateTime(3000),
      rating: 0.75,
      associates: const ['d', 'e', 'f'],
      misc: 'More stuff.',
    ),
    Entry(
      timestamp: DateTime(4000),
      rating: 0.25,
      associates: const ['g', 'h', 'i'],
      misc: 'Even more stuff.',
    ),
  ];

  test('List of entries to JSON', () {
    expect(
      exampleEntries.toJson(),
      '[{"timestamp":946713600000,"rating":0.5,"associates":["a","b","c"],"misc":"Other stuff."},{"timestamp":32503708800000,"rating":0.75,"associates":["d","e","f"],"misc":"More stuff."},{"timestamp":64060617600000,"rating":0.25,"associates":["g","h","i"],"misc":"Even more stuff."}]',
    );
  });

  test('JSON to list of entries', () {
    expect(
      entryListFromJson(
        '[{"timestamp":946713600000,"rating":0.5,"associates":["a","b","c"],"misc":"Other stuff."},{"timestamp":32503708800000,"rating":0.75,"associates":["d","e","f"],"misc":"More stuff."},{"timestamp":64060617600000,"rating":0.25,"associates":["g","h","i"],"misc":"Even more stuff."}]',
      ),
      exampleEntries,
    );
  });
}
