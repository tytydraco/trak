import 'package:test/test.dart';
import 'package:trak/src/models/entry.dart';

void main() {
  final e1 = Entry(
    timestamp: DateTime(2000),
    rating: 0.5,
    associates: const ['a', 'b', 'c'],
    misc: 'Other stuff.',
  );

  final e2 = Entry(
    timestamp: DateTime(2000),
    rating: 0.5,
    associates: const ['a', 'b', 'c'],
    misc: 'Other stuff.',
  );

  final e3 = Entry(
    timestamp: DateTime(2025),
    rating: 0.75,
    associates: const ['d', 'e', 'f'],
    misc: 'Even more stuff.',
  );

  test('Equality', () {
    expect(e1 == e2, true);
    expect(e1.hashCode == e2.hashCode, true);

    expect(e1 == e3, false);
    expect(e1.hashCode == e3.hashCode, false);
  });

  test('JSON serialization', () {
    expect(
      e1.toJson(),
      {
        'timestamp': 946713600000,
        'rating': 0.5,
        'associates': ['a', 'b', 'c'],
        'misc': 'Other stuff.'
      },
    );

    expect(
      Entry.fromJson(const {
        'timestamp': 946713600000,
        'rating': 0.5,
        'associates': ['a', 'b', 'c'],
        'misc': 'Other stuff.'
      }),
      e1,
    );
  });
}
