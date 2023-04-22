import 'dart:convert';

import 'package:trak/src/models/entry.dart';

/// Extension on [Entry] lists to support JSON serialization.
extension EntryListSerializationMixin on List<Entry> {
  /// Serialize to JSON.
  String toJson() {
    return jsonEncode(this);
  }
}

/// Creates a list of type [Entry] given a serialized JSON string.
List<Entry> entryListFromJson(String json) {
  return (jsonDecode(json) as List<dynamic>)
      .cast<Map<String, dynamic>>()
      .map(Entry.fromJson)
      .toList();
}
