import 'dart:io';

import 'package:collection/collection.dart';
import 'package:trak/trak.dart';

void main() {
  final exampleList = [
    Entry(
      timestamp: DateTime(2023, 1, 15, 12, 30, 55),
      rating: 0.5,
      associates: const [
        'Jogging',
        'Good sleep',
      ],
    ),
    Entry(
      timestamp: DateTime(2023, 1, 16, 6, 15, 30),
      rating: 0.8,
      associates: const [
        'Work',
        'Bad sleep',
      ],
    ),
  ];

  final serialized = exampleList.toJson();
  stdout.writeln(serialized);

  final deserialized = entryListFromJson(serialized);
  final isEqual = const ListEquality<Entry>().equals(exampleList, deserialized);
  stdout.writeln('Contents are equal: $isEqual');
}
