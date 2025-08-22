//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdamVarsetLinks {
  /// Returns a new [AdamVarsetLinks] instance.
  AdamVarsetLinks({
    this.self,
    this.parentProduct,
    this.parentDatastructure,
    this.priorVersion,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AdamVarsetRef? self;

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
  AdamDatastructureRef? parentDatastructure;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AdamVarsetRef? priorVersion;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdamVarsetLinks &&
    other.self == self &&
    other.parentProduct == parentProduct &&
    other.parentDatastructure == parentDatastructure &&
    other.priorVersion == priorVersion;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (parentProduct == null ? 0 : parentProduct!.hashCode) +
    (parentDatastructure == null ? 0 : parentDatastructure!.hashCode) +
    (priorVersion == null ? 0 : priorVersion!.hashCode);

  @override
  String toString() => 'AdamVarsetLinks[self=$self, parentProduct=$parentProduct, parentDatastructure=$parentDatastructure, priorVersion=$priorVersion]';

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
    if (this.parentDatastructure != null) {
      json[r'parentDatastructure'] = this.parentDatastructure;
    } else {
      json[r'parentDatastructure'] = null;
    }
    if (this.priorVersion != null) {
      json[r'priorVersion'] = this.priorVersion;
    } else {
      json[r'priorVersion'] = null;
    }
    return json;
  }

  /// Returns a new [AdamVarsetLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdamVarsetLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdamVarsetLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdamVarsetLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdamVarsetLinks(
        self: AdamVarsetRef.fromJson(json[r'self']),
        parentProduct: AdamProductRef.fromJson(json[r'parentProduct']),
        parentDatastructure: AdamDatastructureRef.fromJson(json[r'parentDatastructure']),
        priorVersion: AdamVarsetRef.fromJson(json[r'priorVersion']),
      );
    }
    return null;
  }

  static List<AdamVarsetLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdamVarsetLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdamVarsetLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdamVarsetLinks> mapFromJson(dynamic json) {
    final map = <String, AdamVarsetLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdamVarsetLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdamVarsetLinks-objects as value to a dart map
  static Map<String, List<AdamVarsetLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdamVarsetLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdamVarsetLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

