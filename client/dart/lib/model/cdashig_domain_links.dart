//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CdashigDomainLinks {
  /// Returns a new [CdashigDomainLinks] instance.
  CdashigDomainLinks({
    this.self,
    this.parentProduct,
    this.parentClass,
    this.priorVersion,
    this.scenarios = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CdashigDomainRef? self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CdashigProductRef? parentProduct;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CdashigClassRef? parentClass;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CdashigDomainRef? priorVersion;

  List<CdashigScenarioRefElement> scenarios;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CdashigDomainLinks &&
    other.self == self &&
    other.parentProduct == parentProduct &&
    other.parentClass == parentClass &&
    other.priorVersion == priorVersion &&
    _deepEquality.equals(other.scenarios, scenarios);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (parentProduct == null ? 0 : parentProduct!.hashCode) +
    (parentClass == null ? 0 : parentClass!.hashCode) +
    (priorVersion == null ? 0 : priorVersion!.hashCode) +
    (scenarios.hashCode);

  @override
  String toString() => 'CdashigDomainLinks[self=$self, parentProduct=$parentProduct, parentClass=$parentClass, priorVersion=$priorVersion, scenarios=$scenarios]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.self != null) {
      json[r'self'] = this.self;
    } else {
      json[r'self'] = null;
    }
    if (this.parentProduct != null) {
      json[r'parentProduct'] = this.parentProduct;
    } else {
      json[r'parentProduct'] = null;
    }
    if (this.parentClass != null) {
      json[r'parentClass'] = this.parentClass;
    } else {
      json[r'parentClass'] = null;
    }
    if (this.priorVersion != null) {
      json[r'priorVersion'] = this.priorVersion;
    } else {
      json[r'priorVersion'] = null;
    }
      json[r'scenarios'] = this.scenarios;
    return json;
  }

  /// Returns a new [CdashigDomainLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CdashigDomainLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CdashigDomainLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CdashigDomainLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CdashigDomainLinks(
        self: CdashigDomainRef.fromJson(json[r'self']),
        parentProduct: CdashigProductRef.fromJson(json[r'parentProduct']),
        parentClass: CdashigClassRef.fromJson(json[r'parentClass']),
        priorVersion: CdashigDomainRef.fromJson(json[r'priorVersion']),
        scenarios: CdashigScenarioRefElement.listFromJson(json[r'scenarios']),
      );
    }
    return null;
  }

  static List<CdashigDomainLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CdashigDomainLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CdashigDomainLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CdashigDomainLinks> mapFromJson(dynamic json) {
    final map = <String, CdashigDomainLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CdashigDomainLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CdashigDomainLinks-objects as value to a dart map
  static Map<String, List<CdashigDomainLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CdashigDomainLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CdashigDomainLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

