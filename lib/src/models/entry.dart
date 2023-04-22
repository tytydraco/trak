import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

/// Tracking entry.
@immutable
class Entry {
  /// Creates a new [Entry].
  const Entry({
    required this.timestamp,
    required this.rating,
    this.associates = const [],
    this.misc = '',
  });

  /// Creates a new [Entry] from a JSON map.
  factory Entry.fromJson(Map<String, dynamic> json) {
    return Entry(
      timestamp: DateTime.fromMillisecondsSinceEpoch(json['timestamp'] as int),
      rating: json['rating'] as double,
      associates: (json['associates'] as List<dynamic>).cast<String>(),
      misc: json['misc'] as String,
    );
  }

  /// The creation timestamp in milliseconds since epoch.
  final DateTime timestamp;

  /// The rating value represented as a float from [0, 1].
  final double rating;

  /// The set of associates.
  final List<String> associates;

  /// A miscellaneous field.
  final String misc;

  /// Converts the entry to a JSON object.
  Map<String, dynamic> toJson() {
    return {
      'timestamp': timestamp.millisecondsSinceEpoch,
      'rating': rating,
      'associates': associates,
      'misc': misc,
    };
  }

  @override
  bool operator ==(Object other) =>
      other is Entry &&
      other.runtimeType == runtimeType &&
      other.timestamp == timestamp &&
      other.rating == rating &&
      const ListEquality<String>().equals(other.associates, associates) &&
      other.misc == misc;

  @override
  int get hashCode => Object.hash(timestamp, rating, associates, misc);
}
