//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SdtmDatasetVariable {
  /// Returns a new [SdtmDatasetVariable] instance.
  SdtmDatasetVariable({
    this.ordinal,
    this.name,
    this.label,
    this.description,
    this.role,
    this.roleDescription,
    this.simpleDatatype,
    this.describedValueDomain,
    this.links,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ordinal;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? role;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? roleDescription;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? simpleDatatype;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? describedValueDomain;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SdtmDatasetVariableLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SdtmDatasetVariable &&
    other.ordinal == ordinal &&
    other.name == name &&
    other.label == label &&
    other.description == description &&
    other.role == role &&
    other.roleDescription == roleDescription &&
    other.simpleDatatype == simpleDatatype &&
    other.describedValueDomain == describedValueDomain &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ordinal == null ? 0 : ordinal!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (role == null ? 0 : role!.hashCode) +
    (roleDescription == null ? 0 : roleDescription!.hashCode) +
    (simpleDatatype == null ? 0 : simpleDatatype!.hashCode) +
    (describedValueDomain == null ? 0 : describedValueDomain!.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'SdtmDatasetVariable[ordinal=$ordinal, name=$name, label=$label, description=$description, role=$role, roleDescription=$roleDescription, simpleDatatype=$simpleDatatype, describedValueDomain=$describedValueDomain, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ordinal != null) {
      json[r'ordinal'] = this.ordinal;
    } else {
      json[r'ordinal'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.role != null) {
      json[r'role'] = this.role;
    } else {
      json[r'role'] = null;
    }
    if (this.roleDescription != null) {
      json[r'roleDescription'] = this.roleDescription;
    } else {
      json[r'roleDescription'] = null;
    }
    if (this.simpleDatatype != null) {
      json[r'simpleDatatype'] = this.simpleDatatype;
    } else {
      json[r'simpleDatatype'] = null;
    }
    if (this.describedValueDomain != null) {
      json[r'describedValueDomain'] = this.describedValueDomain;
    } else {
      json[r'describedValueDomain'] = null;
    }
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [SdtmDatasetVariable] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SdtmDatasetVariable? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SdtmDatasetVariable[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SdtmDatasetVariable[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SdtmDatasetVariable(
        ordinal: mapValueOfType<String>(json, r'ordinal'),
        name: mapValueOfType<String>(json, r'name'),
        label: mapValueOfType<String>(json, r'label'),
        description: mapValueOfType<String>(json, r'description'),
        role: mapValueOfType<String>(json, r'role'),
        roleDescription: mapValueOfType<String>(json, r'roleDescription'),
        simpleDatatype: mapValueOfType<String>(json, r'simpleDatatype'),
        describedValueDomain: mapValueOfType<String>(json, r'describedValueDomain'),
        links: SdtmDatasetVariableLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<SdtmDatasetVariable> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SdtmDatasetVariable>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SdtmDatasetVariable.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SdtmDatasetVariable> mapFromJson(dynamic json) {
    final map = <String, SdtmDatasetVariable>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SdtmDatasetVariable.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SdtmDatasetVariable-objects as value to a dart map
  static Map<String, List<SdtmDatasetVariable>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SdtmDatasetVariable>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SdtmDatasetVariable.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

