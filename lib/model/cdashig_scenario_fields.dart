//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CdashigScenarioFields {
  /// Returns a new [CdashigScenarioFields] instance.
  CdashigScenarioFields({
    this.ordinal,
    this.domain,
    this.scenario,
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
  String? domain;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scenario;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CdashigScenarioFieldsLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CdashigScenarioFields &&
    other.ordinal == ordinal &&
    other.domain == domain &&
    other.scenario == scenario &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ordinal == null ? 0 : ordinal!.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (scenario == null ? 0 : scenario!.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'CdashigScenarioFields[ordinal=$ordinal, domain=$domain, scenario=$scenario, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ordinal != null) {
      json[r'ordinal'] = this.ordinal;
    } else {
      json[r'ordinal'] = null;
    }
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.scenario != null) {
      json[r'scenario'] = this.scenario;
    } else {
      json[r'scenario'] = null;
    }
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [CdashigScenarioFields] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CdashigScenarioFields? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CdashigScenarioFields[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CdashigScenarioFields[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CdashigScenarioFields(
        ordinal: mapValueOfType<String>(json, r'ordinal'),
        domain: mapValueOfType<String>(json, r'domain'),
        scenario: mapValueOfType<String>(json, r'scenario'),
        links: CdashigScenarioFieldsLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<CdashigScenarioFields> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CdashigScenarioFields>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CdashigScenarioFields.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CdashigScenarioFields> mapFromJson(dynamic json) {
    final map = <String, CdashigScenarioFields>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CdashigScenarioFields.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CdashigScenarioFields-objects as value to a dart map
  static Map<String, List<CdashigScenarioFields>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CdashigScenarioFields>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CdashigScenarioFields.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

