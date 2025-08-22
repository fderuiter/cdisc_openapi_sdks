//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CdashigDomainFieldsLinks {
  /// Returns a new [CdashigDomainFieldsLinks] instance.
  CdashigDomainFieldsLinks({
    this.self,
    this.parentProduct,
    this.parentClass,
    this.fields = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CdashigDomainFieldsRef? self;

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

  List<CdashigDomainFieldRefElement> fields;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CdashigDomainFieldsLinks &&
    other.self == self &&
    other.parentProduct == parentProduct &&
    other.parentClass == parentClass &&
    _deepEquality.equals(other.fields, fields);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (parentProduct == null ? 0 : parentProduct!.hashCode) +
    (parentClass == null ? 0 : parentClass!.hashCode) +
    (fields.hashCode);

  @override
  String toString() => 'CdashigDomainFieldsLinks[self=$self, parentProduct=$parentProduct, parentClass=$parentClass, fields=$fields]';

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
      json[r'fields'] = this.fields;
    return json;
  }

  /// Returns a new [CdashigDomainFieldsLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CdashigDomainFieldsLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CdashigDomainFieldsLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CdashigDomainFieldsLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CdashigDomainFieldsLinks(
        self: CdashigDomainFieldsRef.fromJson(json[r'self']),
        parentProduct: CdashigProductRef.fromJson(json[r'parentProduct']),
        parentClass: CdashigClassRef.fromJson(json[r'parentClass']),
        fields: CdashigDomainFieldRefElement.listFromJson(json[r'fields']),
      );
    }
    return null;
  }

  static List<CdashigDomainFieldsLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CdashigDomainFieldsLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CdashigDomainFieldsLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CdashigDomainFieldsLinks> mapFromJson(dynamic json) {
    final map = <String, CdashigDomainFieldsLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CdashigDomainFieldsLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CdashigDomainFieldsLinks-objects as value to a dart map
  static Map<String, List<CdashigDomainFieldsLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CdashigDomainFieldsLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CdashigDomainFieldsLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

