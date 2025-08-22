//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScopeValues {
  /// Returns a new [ScopeValues] instance.
  ScopeValues({
    this.total,
    this.hasMore,
    this.values = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? total;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasMore;

  List<String> values;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScopeValues &&
    other.total == total &&
    other.hasMore == hasMore &&
    _deepEquality.equals(other.values, values);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (total == null ? 0 : total!.hashCode) +
    (hasMore == null ? 0 : hasMore!.hashCode) +
    (values.hashCode);

  @override
  String toString() => 'ScopeValues[total=$total, hasMore=$hasMore, values=$values]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.hasMore != null) {
      json[r'hasMore'] = this.hasMore;
    } else {
      json[r'hasMore'] = null;
    }
      json[r'values'] = this.values;
    return json;
  }

  /// Returns a new [ScopeValues] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScopeValues? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScopeValues[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScopeValues[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScopeValues(
        total: num.parse('${json[r'total']}'),
        hasMore: mapValueOfType<bool>(json, r'hasMore'),
        values: json[r'values'] is Iterable
            ? (json[r'values'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ScopeValues> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScopeValues>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScopeValues.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScopeValues> mapFromJson(dynamic json) {
    final map = <String, ScopeValues>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScopeValues.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScopeValues-objects as value to a dart map
  static Map<String, List<ScopeValues>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScopeValues>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScopeValues.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

