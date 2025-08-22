//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CdashigClass {
  /// Returns a new [CdashigClass] instance.
  CdashigClass({
    this.ordinal,
    this.name,
    this.label,
    this.description,
    this.links,
    this.domains = const [],
    this.scenarios = const [],
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
  CdashigClassLinks? links;

  List<CdashigDomain> domains;

  List<CdashigScenario> scenarios;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CdashigClass &&
    other.ordinal == ordinal &&
    other.name == name &&
    other.label == label &&
    other.description == description &&
    other.links == links &&
    _deepEquality.equals(other.domains, domains) &&
    _deepEquality.equals(other.scenarios, scenarios);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ordinal == null ? 0 : ordinal!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (links == null ? 0 : links!.hashCode) +
    (domains.hashCode) +
    (scenarios.hashCode);

  @override
  String toString() => 'CdashigClass[ordinal=$ordinal, name=$name, label=$label, description=$description, links=$links, domains=$domains, scenarios=$scenarios]';

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
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
      json[r'domains'] = this.domains;
      json[r'scenarios'] = this.scenarios;
    return json;
  }

  /// Returns a new [CdashigClass] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CdashigClass? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CdashigClass[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CdashigClass[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CdashigClass(
        ordinal: mapValueOfType<String>(json, r'ordinal'),
        name: mapValueOfType<String>(json, r'name'),
        label: mapValueOfType<String>(json, r'label'),
        description: mapValueOfType<String>(json, r'description'),
        links: CdashigClassLinks.fromJson(json[r'_links']),
        domains: CdashigDomain.listFromJson(json[r'domains']),
        scenarios: CdashigScenario.listFromJson(json[r'scenarios']),
      );
    }
    return null;
  }

  static List<CdashigClass> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CdashigClass>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CdashigClass.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CdashigClass> mapFromJson(dynamic json) {
    final map = <String, CdashigClass>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CdashigClass.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CdashigClass-objects as value to a dart map
  static Map<String, List<CdashigClass>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CdashigClass>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CdashigClass.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

