//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SdtmProductLinks {
  /// Returns a new [SdtmProductLinks] instance.
  SdtmProductLinks({
    this.self,
    this.priorVersion,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SdtmProductRef? self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SdtmProductRef? priorVersion;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SdtmProductLinks &&
    other.self == self &&
    other.priorVersion == priorVersion;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (priorVersion == null ? 0 : priorVersion!.hashCode);

  @override
  String toString() => 'SdtmProductLinks[self=$self, priorVersion=$priorVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.self != null) {
      json[r'self'] = this.self;
    } else {
      json[r'self'] = null;
    }
    if (this.priorVersion != null) {
      json[r'priorVersion'] = this.priorVersion;
    } else {
      json[r'priorVersion'] = null;
    }
    return json;
  }

  /// Returns a new [SdtmProductLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SdtmProductLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SdtmProductLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SdtmProductLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SdtmProductLinks(
        self: SdtmProductRef.fromJson(json[r'self']),
        priorVersion: SdtmProductRef.fromJson(json[r'priorVersion']),
      );
    }
    return null;
  }

  static List<SdtmProductLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SdtmProductLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SdtmProductLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SdtmProductLinks> mapFromJson(dynamic json) {
    final map = <String, SdtmProductLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SdtmProductLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SdtmProductLinks-objects as value to a dart map
  static Map<String, List<SdtmProductLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SdtmProductLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SdtmProductLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

