//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CdashigClassScenariosLinks {
  /// Returns a new [CdashigClassScenariosLinks] instance.
  CdashigClassScenariosLinks({
    this.self,
    this.scenarios = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CdashigClassScenariosRef? self;

  List<CdashigScenarioRefElement> scenarios;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CdashigClassScenariosLinks &&
    other.self == self &&
    _deepEquality.equals(other.scenarios, scenarios);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (scenarios.hashCode);

  @override
  String toString() => 'CdashigClassScenariosLinks[self=$self, scenarios=$scenarios]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.self != null) {
      json[r'self'] = this.self;
    } else {
      json[r'self'] = null;
    }
      json[r'scenarios'] = this.scenarios;
    return json;
  }

  /// Returns a new [CdashigClassScenariosLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CdashigClassScenariosLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CdashigClassScenariosLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CdashigClassScenariosLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CdashigClassScenariosLinks(
        self: CdashigClassScenariosRef.fromJson(json[r'self']),
        scenarios: CdashigScenarioRefElement.listFromJson(json[r'scenarios']),
      );
    }
    return null;
  }

  static List<CdashigClassScenariosLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CdashigClassScenariosLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CdashigClassScenariosLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CdashigClassScenariosLinks> mapFromJson(dynamic json) {
    final map = <String, CdashigClassScenariosLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CdashigClassScenariosLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CdashigClassScenariosLinks-objects as value to a dart map
  static Map<String, List<CdashigClassScenariosLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CdashigClassScenariosLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CdashigClassScenariosLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

