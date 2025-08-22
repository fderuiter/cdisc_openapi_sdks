//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AboutLinks {
  /// Returns a new [AboutLinks] instance.
  AboutLinks({
    this.self,
    this.lastupdated,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AboutRef? self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LastupdatedRef? lastupdated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AboutLinks &&
    other.self == self &&
    other.lastupdated == lastupdated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (lastupdated == null ? 0 : lastupdated!.hashCode);

  @override
  String toString() => 'AboutLinks[self=$self, lastupdated=$lastupdated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.self != null) {
      json[r'self'] = this.self;
    } else {
      json[r'self'] = null;
    }
    if (this.lastupdated != null) {
      json[r'lastupdated'] = this.lastupdated;
    } else {
      json[r'lastupdated'] = null;
    }
    return json;
  }

  /// Returns a new [AboutLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AboutLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AboutLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AboutLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AboutLinks(
        self: AboutRef.fromJson(json[r'self']),
        lastupdated: LastupdatedRef.fromJson(json[r'lastupdated']),
      );
    }
    return null;
  }

  static List<AboutLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AboutLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AboutLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AboutLinks> mapFromJson(dynamic json) {
    final map = <String, AboutLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AboutLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AboutLinks-objects as value to a dart map
  static Map<String, List<AboutLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AboutLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AboutLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

