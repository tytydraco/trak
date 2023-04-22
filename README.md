# trak

A simple framework to use when tracking things.

Trak provides an `Entry` class with the following fields:
- `timestamp`: A `DateTime` of the entry date and time.
- `rating`: A `double` in the range of [0, 1].
- `associates`: A list of strings containing the things being associated with this entry.
- `misc`: A string to include any extra information.

The `Entry` class is JSON serializable.

Other serialization methods are also included:
- `List<Entry>::toJson()`: Serialize a list of entries to a JSON string.
- `entryListFromJson(String json)`: Deserialize a list of entries from a JSON string.

# Getting started

Add `trak` to your project: `dart pub add trak`.

# Usage

See the [example](example/example.dart).
