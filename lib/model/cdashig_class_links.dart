//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CdashigClassLinks {
  /// Returns a new [CdashigClassLinks] instance.
  CdashigClassLinks({
    this.self,
    this.modelClass,
    this.parentProduct,
    this.parentClass,
    this.subclasses = const [],
    this.priorVersion,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CdashigClassRef? self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CdashClassRef? modelClass;

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

  List<CdashigClassRefSubclass> subclasses;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CdashigClassRef? priorVersion;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CdashigClassLinks &&
    other.self == self &&
    other.modelClass == modelClass &&
    other.parentProduct == parentProduct &&
    other.parentClass == parentClass &&
    _deepEquality.equals(other.subclasses, subclasses) &&
    other.priorVersion == priorVersion;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (modelClass == null ? 0 : modelClass!.hashCode) +
    (parentProduct == null ? 0 : parentProduct!.hashCode) +
    (parentClass == null ? 0 : parentClass!.hashCode) +
    (subclasses.hashCode) +
    (priorVersion == null ? 0 : priorVersion!.hashCode);

  @override
  String toString() => 'CdashigClassLinks[self=$self, modelClass=$modelClass, parentProduct=$parentProduct, parentClass=$parentClass, subclasses=$subclasses, priorVersion=$priorVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.self != null) {
      json[r'self'] = this.self;
    } else {
      json[r'self'] = null;
    }
    if (this.modelClass != null) {
      json[r'modelClass'] = this.modelClass;
    } else {
      json[r'modelClass'] = null;
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
      json[r'subclasses'] = this.subclasses;
    if (this.priorVersion != null) {
      json[r'priorVersion'] = this.priorVersion;
    } else {
      json[r'priorVersion'] = null;
    }
    return json;
  }

  /// Returns a new [CdashigClassLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CdashigClassLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CdashigClassLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CdashigClassLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CdashigClassLinks(
        self: CdashigClassRef.fromJson(json[r'self']),
        modelClass: CdashClassRef.fromJson(json[r'modelClass']),
        parentProduct: CdashigProductRef.fromJson(json[r'parentProduct']),
        parentClass: CdashigClassRef.fromJson(json[r'parentClass']),
        subclasses: CdashigClassRefSubclass.listFromJson(json[r'subclasses']),
        priorVersion: CdashigClassRef.fromJson(json[r'priorVersion']),
      );
    }
    return null;
  }

  static List<CdashigClassLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CdashigClassLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CdashigClassLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CdashigClassLinks> mapFromJson(dynamic json) {
    final map = <String, CdashigClassLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CdashigClassLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CdashigClassLinks-objects as value to a dart map
  static Map<String, List<CdashigClassLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CdashigClassLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CdashigClassLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

