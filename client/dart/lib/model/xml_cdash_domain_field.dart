//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class XmlCdashDomainField {
  /// Returns a new [XmlCdashDomainField] instance.
  XmlCdashDomainField({
    this.self,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CdashDomainField? self;

  @override
  bool operator ==(Object other) => identical(this, other) || other is XmlCdashDomainField &&
    other.self == self;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode);

  @override
  String toString() => 'XmlCdashDomainField[self=$self]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.self != null) {
      json[r'self'] = this.self;
    } else {
      json[r'self'] = null;
    }
    return json;
  }

  /// Returns a new [XmlCdashDomainField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static XmlCdashDomainField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "XmlCdashDomainField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "XmlCdashDomainField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return XmlCdashDomainField(
        self: CdashDomainField.fromJson(json[r'self']),
      );
    }
    return null;
  }

  static List<XmlCdashDomainField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <XmlCdashDomainField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = XmlCdashDomainField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, XmlCdashDomainField> mapFromJson(dynamic json) {
    final map = <String, XmlCdashDomainField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = XmlCdashDomainField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of XmlCdashDomainField-objects as value to a dart map
  static Map<String, List<XmlCdashDomainField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<XmlCdashDomainField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = XmlCdashDomainField.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

