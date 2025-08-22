//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DefaultSearchResponse {
  /// Returns a new [DefaultSearchResponse] instance.
  DefaultSearchResponse({
    this.hits = const [],
    this.totalHits,
  });

  List<DefaultSearchResponseHitsInner> hits;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? totalHits;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DefaultSearchResponse &&
    _deepEquality.equals(other.hits, hits) &&
    other.totalHits == totalHits;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (hits.hashCode) +
    (totalHits == null ? 0 : totalHits!.hashCode);

  @override
  String toString() => 'DefaultSearchResponse[hits=$hits, totalHits=$totalHits]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'hits'] = this.hits;
    if (this.totalHits != null) {
      json[r'totalHits'] = this.totalHits;
    } else {
      json[r'totalHits'] = null;
    }
    return json;
  }

  /// Returns a new [DefaultSearchResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DefaultSearchResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DefaultSearchResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DefaultSearchResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DefaultSearchResponse(
        hits: DefaultSearchResponseHitsInner.listFromJson(json[r'hits']),
        totalHits: num.parse('${json[r'totalHits']}'),
      );
    }
    return null;
  }

  static List<DefaultSearchResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DefaultSearchResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DefaultSearchResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DefaultSearchResponse> mapFromJson(dynamic json) {
    final map = <String, DefaultSearchResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DefaultSearchResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DefaultSearchResponse-objects as value to a dart map
  static Map<String, List<DefaultSearchResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DefaultSearchResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DefaultSearchResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

