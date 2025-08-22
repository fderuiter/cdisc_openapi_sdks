//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CdashDomain {
  /// Returns a new [CdashDomain] instance.
  CdashDomain({
    this.ordinal,
    this.name,
    this.label,
    this.links,
    this.fields = const [],
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
  CdashDomainLinks? links;

  List<CdashDomainField> fields;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CdashDomain &&
    other.ordinal == ordinal &&
    other.name == name &&
    other.label == label &&
    other.links == links &&
    _deepEquality.equals(other.fields, fields);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ordinal == null ? 0 : ordinal!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (links == null ? 0 : links!.hashCode) +
    (fields.hashCode);

  @override
  String toString() => 'CdashDomain[ordinal=$ordinal, name=$name, label=$label, links=$links, fields=$fields]';

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
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
      json[r'fields'] = this.fields;
    return json;
  }

  /// Returns a new [CdashDomain] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CdashDomain? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CdashDomain[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CdashDomain[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CdashDomain(
        ordinal: mapValueOfType<String>(json, r'ordinal'),
        name: mapValueOfType<String>(json, r'name'),
        label: mapValueOfType<String>(json, r'label'),
        links: CdashDomainLinks.fromJson(json[r'_links']),
        fields: CdashDomainField.listFromJson(json[r'fields']),
      );
    }
    return null;
  }

  static List<CdashDomain> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CdashDomain>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CdashDomain.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CdashDomain> mapFromJson(dynamic json) {
    final map = <String, CdashDomain>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CdashDomain.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CdashDomain-objects as value to a dart map
  static Map<String, List<CdashDomain>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CdashDomain>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CdashDomain.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

