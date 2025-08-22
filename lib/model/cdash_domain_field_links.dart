//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CdashDomainFieldLinks {
  /// Returns a new [CdashDomainFieldLinks] instance.
  CdashDomainFieldLinks({
    this.self,
    this.codelist = const [],
    this.parentProduct,
    this.parentClass,
    this.parentDomain,
    this.rootItem,
    this.priorVersion,
    this.sdtmDatasetMappingTargets = const [],
    this.sdtmigDatasetMappingTargets = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CdashDomainFieldRef? self;

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
  CdashDomainRef? parentDomain;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RootCdashDomainFieldRef? rootItem;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CdashDomainFieldRef? priorVersion;

  List<SdtmDatasetVariableRefTarget> sdtmDatasetMappingTargets;

  List<SdtmigDatasetVariableRefTarget> sdtmigDatasetMappingTargets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CdashDomainFieldLinks &&
    other.self == self &&
    _deepEquality.equals(other.codelist, codelist) &&
    other.parentProduct == parentProduct &&
    other.parentClass == parentClass &&
    other.parentDomain == parentDomain &&
    other.rootItem == rootItem &&
    other.priorVersion == priorVersion &&
    _deepEquality.equals(other.sdtmDatasetMappingTargets, sdtmDatasetMappingTargets) &&
    _deepEquality.equals(other.sdtmigDatasetMappingTargets, sdtmigDatasetMappingTargets);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (codelist.hashCode) +
    (parentProduct == null ? 0 : parentProduct!.hashCode) +
    (parentClass == null ? 0 : parentClass!.hashCode) +
    (parentDomain == null ? 0 : parentDomain!.hashCode) +
    (rootItem == null ? 0 : rootItem!.hashCode) +
    (priorVersion == null ? 0 : priorVersion!.hashCode) +
    (sdtmDatasetMappingTargets.hashCode) +
    (sdtmigDatasetMappingTargets.hashCode);

  @override
  String toString() => 'CdashDomainFieldLinks[self=$self, codelist=$codelist, parentProduct=$parentProduct, parentClass=$parentClass, parentDomain=$parentDomain, rootItem=$rootItem, priorVersion=$priorVersion, sdtmDatasetMappingTargets=$sdtmDatasetMappingTargets, sdtmigDatasetMappingTargets=$sdtmigDatasetMappingTargets]';

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
    if (this.parentDomain != null) {
      json[r'parentDomain'] = this.parentDomain;
    } else {
      json[r'parentDomain'] = null;
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
      json[r'sdtmDatasetMappingTargets'] = this.sdtmDatasetMappingTargets;
      json[r'sdtmigDatasetMappingTargets'] = this.sdtmigDatasetMappingTargets;
    return json;
  }

  /// Returns a new [CdashDomainFieldLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CdashDomainFieldLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CdashDomainFieldLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CdashDomainFieldLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CdashDomainFieldLinks(
        self: CdashDomainFieldRef.fromJson(json[r'self']),
        codelist: RootCtCodelistRefElement.listFromJson(json[r'codelist']),
        parentProduct: CdashProductRef.fromJson(json[r'parentProduct']),
        parentClass: CdashClassRef.fromJson(json[r'parentClass']),
        parentDomain: CdashDomainRef.fromJson(json[r'parentDomain']),
        rootItem: RootCdashDomainFieldRef.fromJson(json[r'rootItem']),
        priorVersion: CdashDomainFieldRef.fromJson(json[r'priorVersion']),
        sdtmDatasetMappingTargets: SdtmDatasetVariableRefTarget.listFromJson(json[r'sdtmDatasetMappingTargets']),
        sdtmigDatasetMappingTargets: SdtmigDatasetVariableRefTarget.listFromJson(json[r'sdtmigDatasetMappingTargets']),
      );
    }
    return null;
  }

  static List<CdashDomainFieldLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CdashDomainFieldLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CdashDomainFieldLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CdashDomainFieldLinks> mapFromJson(dynamic json) {
    final map = <String, CdashDomainFieldLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CdashDomainFieldLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CdashDomainFieldLinks-objects as value to a dart map
  static Map<String, List<CdashDomainFieldLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CdashDomainFieldLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CdashDomainFieldLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

