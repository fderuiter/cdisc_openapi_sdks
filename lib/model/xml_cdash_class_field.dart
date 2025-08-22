//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class XmlCdashClassField {
  /// Returns a new [XmlCdashClassField] instance.
  XmlCdashClassField({
    this.self,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CdashClassField? self;

  @override
  bool operator ==(Object other) => identical(this, other) || other is XmlCdashClassField &&
    other.self == self;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode);

  @override
  String toString() => 'XmlCdashClassField[self=$self]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.self != null) {
      json[r'self'] = this.self;
    } else {
      json[r'self'] = null;
    }
    return json;
  }

  /// Returns a new [XmlCdashClassField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static XmlCdashClassField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "XmlCdashClassField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "XmlCdashClassField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return XmlCdashClassField(
        self: CdashClassField.fromJson(json[r'self']),
      );
    }
    return null;
  }

  static List<XmlCdashClassField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <XmlCdashClassField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = XmlCdashClassField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, XmlCdashClassField> mapFromJson(dynamic json) {
    final map = <String, XmlCdashClassField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = XmlCdashClassField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of XmlCdashClassField-objects as value to a dart map
  static Map<String, List<XmlCdashClassField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<XmlCdashClassField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = XmlCdashClassField.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

