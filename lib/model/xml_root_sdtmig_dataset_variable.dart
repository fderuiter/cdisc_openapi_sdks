//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class XmlRootSdtmigDatasetVariable {
  /// Returns a new [XmlRootSdtmigDatasetVariable] instance.
  XmlRootSdtmigDatasetVariable({
    this.self,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RootSdtmigDatasetVariable? self;

  @override
  bool operator ==(Object other) => identical(this, other) || other is XmlRootSdtmigDatasetVariable &&
    other.self == self;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode);

  @override
  String toString() => 'XmlRootSdtmigDatasetVariable[self=$self]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.self != null) {
      json[r'self'] = this.self;
    } else {
      json[r'self'] = null;
    }
    return json;
  }

  /// Returns a new [XmlRootSdtmigDatasetVariable] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static XmlRootSdtmigDatasetVariable? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "XmlRootSdtmigDatasetVariable[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "XmlRootSdtmigDatasetVariable[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return XmlRootSdtmigDatasetVariable(
        self: RootSdtmigDatasetVariable.fromJson(json[r'self']),
      );
    }
    return null;
  }

  static List<XmlRootSdtmigDatasetVariable> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <XmlRootSdtmigDatasetVariable>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = XmlRootSdtmigDatasetVariable.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, XmlRootSdtmigDatasetVariable> mapFromJson(dynamic json) {
    final map = <String, XmlRootSdtmigDatasetVariable>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = XmlRootSdtmigDatasetVariable.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of XmlRootSdtmigDatasetVariable-objects as value to a dart map
  static Map<String, List<XmlRootSdtmigDatasetVariable>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<XmlRootSdtmigDatasetVariable>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = XmlRootSdtmigDatasetVariable.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

