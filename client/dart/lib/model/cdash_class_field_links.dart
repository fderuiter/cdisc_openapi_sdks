//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CdashClassFieldLinks {
  /// Returns a new [CdashClassFieldLinks] instance.
  CdashClassFieldLinks({
    this.self,
    this.codelist = const [],
    this.parentProduct,
    this.parentClass,
    this.rootItem,
    this.priorVersion,
    this.sdtmClassMappingTargets = const [],
    this.sdtmDatasetMappingTargets = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CdashClassFieldRef? self;

  List<RootCtCodelistRefElement> codelist;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CdashProductRef? parentProduct;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CdashClassRef? parentClass;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RootCdashClassFieldRef? rootItem;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CdashClassFieldRef? priorVersion;

  List<SdtmClassVariableRefTarget> sdtmClassMappingTargets;

  List<SdtmDatasetVariableRefTarget> sdtmDatasetMappingTargets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CdashClassFieldLinks &&
    other.self == self &&
    _deepEquality.equals(other.codelist, codelist) &&
    other.parentProduct == parentProduct &&
    other.parentClass == parentClass &&
    other.rootItem == rootItem &&
    other.priorVersion == priorVersion &&
    _deepEquality.equals(other.sdtmClassMappingTargets, sdtmClassMappingTargets) &&
    _deepEquality.equals(other.sdtmDatasetMappingTargets, sdtmDatasetMappingTargets);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (codelist.hashCode) +
    (parentProduct == null ? 0 : parentProduct!.hashCode) +
    (parentClass == null ? 0 : parentClass!.hashCode) +
    (rootItem == null ? 0 : rootItem!.hashCode) +
    (priorVersion == null ? 0 : priorVersion!.hashCode) +
    (sdtmClassMappingTargets.hashCode) +
    (sdtmDatasetMappingTargets.hashCode);

  @override
  String toString() => 'CdashClassFieldLinks[self=$self, codelist=$codelist, parentProduct=$parentProduct, parentClass=$parentClass, rootItem=$rootItem, priorVersion=$priorVersion, sdtmClassMappingTargets=$sdtmClassMappingTargets, sdtmDatasetMappingTargets=$sdtmDatasetMappingTargets]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.self != null) {
      json[r'self'] = this.self;
    } else {
      json[r'self'] = null;
    }
      json[r'codelist'] = this.codelist;
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
      json[r'sdtmClassMappingTargets'] = this.sdtmClassMappingTargets;
      json[r'sdtmDatasetMappingTargets'] = this.sdtmDatasetMappingTargets;
    return json;
  }

  /// Returns a new [CdashClassFieldLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CdashClassFieldLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CdashClassFieldLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CdashClassFieldLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CdashClassFieldLinks(
        self: CdashClassFieldRef.fromJson(json[r'self']),
        codelist: RootCtCodelistRefElement.listFromJson(json[r'codelist']),
        parentProduct: CdashProductRef.fromJson(json[r'parentProduct']),
        parentClass: CdashClassRef.fromJson(json[r'parentClass']),
        rootItem: RootCdashClassFieldRef.fromJson(json[r'rootItem']),
        priorVersion: CdashClassFieldRef.fromJson(json[r'priorVersion']),
        sdtmClassMappingTargets: SdtmClassVariableRefTarget.listFromJson(json[r'sdtmClassMappingTargets']),
        sdtmDatasetMappingTargets: SdtmDatasetVariableRefTarget.listFromJson(json[r'sdtmDatasetMappingTargets']),
      );
    }
    return null;
  }

  static List<CdashClassFieldLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CdashClassFieldLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CdashClassFieldLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CdashClassFieldLinks> mapFromJson(dynamic json) {
    final map = <String, CdashClassFieldLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CdashClassFieldLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CdashClassFieldLinks-objects as value to a dart map
  static Map<String, List<CdashClassFieldLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CdashClassFieldLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CdashClassFieldLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

