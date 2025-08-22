//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdamDatastructureVarsetsLinks {
  /// Returns a new [AdamDatastructureVarsetsLinks] instance.
  AdamDatastructureVarsetsLinks({
    this.self,
    this.parentProduct,
    this.priorVersion,
    this.analysisVariableSets = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AdamDatastructureVarsetsRef? self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AdamProductRef? parentProduct;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AdamDatastructureVarsetsRef? priorVersion;

  List<AdamVarsetRefElement> analysisVariableSets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdamDatastructureVarsetsLinks &&
    other.self == self &&
    other.parentProduct == parentProduct &&
    other.priorVersion == priorVersion &&
    _deepEquality.equals(other.analysisVariableSets, analysisVariableSets);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (parentProduct == null ? 0 : parentProduct!.hashCode) +
    (priorVersion == null ? 0 : priorVersion!.hashCode) +
    (analysisVariableSets.hashCode);

  @override
  String toString() => 'AdamDatastructureVarsetsLinks[self=$self, parentProduct=$parentProduct, priorVersion=$priorVersion, analysisVariableSets=$analysisVariableSets]';

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
    if (this.priorVersion != null) {
      json[r'priorVersion'] = this.priorVersion;
    } else {
      json[r'priorVersion'] = null;
    }
      json[r'analysisVariableSets'] = this.analysisVariableSets;
    return json;
  }

  /// Returns a new [AdamDatastructureVarsetsLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdamDatastructureVarsetsLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdamDatastructureVarsetsLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdamDatastructureVarsetsLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdamDatastructureVarsetsLinks(
        self: AdamDatastructureVarsetsRef.fromJson(json[r'self']),
        parentProduct: AdamProductRef.fromJson(json[r'parentProduct']),
        priorVersion: AdamDatastructureVarsetsRef.fromJson(json[r'priorVersion']),
        analysisVariableSets: AdamVarsetRefElement.listFromJson(json[r'analysisVariableSets']),
      );
    }
    return null;
  }

  static List<AdamDatastructureVarsetsLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdamDatastructureVarsetsLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdamDatastructureVarsetsLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdamDatastructureVarsetsLinks> mapFromJson(dynamic json) {
    final map = <String, AdamDatastructureVarsetsLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdamDatastructureVarsetsLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdamDatastructureVarsetsLinks-objects as value to a dart map
  static Map<String, List<AdamDatastructureVarsetsLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdamDatastructureVarsetsLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdamDatastructureVarsetsLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

