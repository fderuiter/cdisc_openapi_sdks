//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CtCodelistTermsLinks {
  /// Returns a new [CtCodelistTermsLinks] instance.
  CtCodelistTermsLinks({
    this.self,
    this.parentPackage,
    this.rootItem,
    this.priorVersion,
    this.terms = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CtCodelistTermsRef? self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CtPackageRef? parentPackage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RootCtCodelistRef? rootItem;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CtCodelistTermsRef? priorVersion;

  List<CtTermRefElement> terms;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CtCodelistTermsLinks &&
    other.self == self &&
    other.parentPackage == parentPackage &&
    other.rootItem == rootItem &&
    other.priorVersion == priorVersion &&
    _deepEquality.equals(other.terms, terms);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (parentPackage == null ? 0 : parentPackage!.hashCode) +
    (rootItem == null ? 0 : rootItem!.hashCode) +
    (priorVersion == null ? 0 : priorVersion!.hashCode) +
    (terms.hashCode);

  @override
  String toString() => 'CtCodelistTermsLinks[self=$self, parentPackage=$parentPackage, rootItem=$rootItem, priorVersion=$priorVersion, terms=$terms]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.self != null) {
      json[r'self'] = this.self;
    } else {
      json[r'self'] = null;
    }
    if (this.parentPackage != null) {
      json[r'parentPackage'] = this.parentPackage;
    } else {
      json[r'parentPackage'] = null;
    }
    if (this.rootItem != null) {
      json[r'rootItem'] = this.rootItem;
    } else {
      json[r'rootItem'] = null;
    }
    if (this.priorVersion != null) {
      json[r'priorVersion'] = this.priorVersion;
    } else {
      json[r'priorVersion'] = null;
    }
      json[r'terms'] = this.terms;
    return json;
  }

  /// Returns a new [CtCodelistTermsLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CtCodelistTermsLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CtCodelistTermsLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CtCodelistTermsLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CtCodelistTermsLinks(
        self: CtCodelistTermsRef.fromJson(json[r'self']),
        parentPackage: CtPackageRef.fromJson(json[r'parentPackage']),
        rootItem: RootCtCodelistRef.fromJson(json[r'rootItem']),
        priorVersion: CtCodelistTermsRef.fromJson(json[r'priorVersion']),
        terms: CtTermRefElement.listFromJson(json[r'terms']),
      );
    }
    return null;
  }

  static List<CtCodelistTermsLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CtCodelistTermsLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CtCodelistTermsLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CtCodelistTermsLinks> mapFromJson(dynamic json) {
    final map = <String, CtCodelistTermsLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CtCodelistTermsLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CtCodelistTermsLinks-objects as value to a dart map
  static Map<String, List<CtCodelistTermsLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CtCodelistTermsLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CtCodelistTermsLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

