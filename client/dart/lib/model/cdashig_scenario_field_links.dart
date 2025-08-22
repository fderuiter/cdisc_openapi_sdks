//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CdashigScenarioFieldLinks {
  /// Returns a new [CdashigScenarioFieldLinks] instance.
  CdashigScenarioFieldLinks({
    this.self,
    this.codelist = const [],
    this.parentProduct,
    this.parentDomain,
    this.parentScenario,
    this.rootItem,
    this.priorVersion,
    this.sdtmigDatasetMappingTargets = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CdashigScenarioFieldRef? self;

  List<RootCtCodelistRefElement> codelist;

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
  CdashigDomainRef? parentDomain;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CdashigScenarioRef? parentScenario;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RootCdashigScenarioFieldRef? rootItem;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CdashigScenarioFieldRef? priorVersion;

  List<SdtmigDatasetVariableRefTarget> sdtmigDatasetMappingTargets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CdashigScenarioFieldLinks &&
    other.self == self &&
    _deepEquality.equals(other.codelist, codelist) &&
    other.parentProduct == parentProduct &&
    other.parentDomain == parentDomain &&
    other.parentScenario == parentScenario &&
    other.rootItem == rootItem &&
    other.priorVersion == priorVersion &&
    _deepEquality.equals(other.sdtmigDatasetMappingTargets, sdtmigDatasetMappingTargets);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (codelist.hashCode) +
    (parentProduct == null ? 0 : parentProduct!.hashCode) +
    (parentDomain == null ? 0 : parentDomain!.hashCode) +
    (parentScenario == null ? 0 : parentScenario!.hashCode) +
    (rootItem == null ? 0 : rootItem!.hashCode) +
    (priorVersion == null ? 0 : priorVersion!.hashCode) +
    (sdtmigDatasetMappingTargets.hashCode);

  @override
  String toString() => 'CdashigScenarioFieldLinks[self=$self, codelist=$codelist, parentProduct=$parentProduct, parentDomain=$parentDomain, parentScenario=$parentScenario, rootItem=$rootItem, priorVersion=$priorVersion, sdtmigDatasetMappingTargets=$sdtmigDatasetMappingTargets]';

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
    if (this.parentDomain != null) {
      json[r'parentDomain'] = this.parentDomain;
    } else {
      json[r'parentDomain'] = null;
    }
    if (this.parentScenario != null) {
      json[r'parentScenario'] = this.parentScenario;
    } else {
      json[r'parentScenario'] = null;
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
      json[r'sdtmigDatasetMappingTargets'] = this.sdtmigDatasetMappingTargets;
    return json;
  }

  /// Returns a new [CdashigScenarioFieldLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CdashigScenarioFieldLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CdashigScenarioFieldLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CdashigScenarioFieldLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CdashigScenarioFieldLinks(
        self: CdashigScenarioFieldRef.fromJson(json[r'self']),
        codelist: RootCtCodelistRefElement.listFromJson(json[r'codelist']),
        parentProduct: CdashigProductRef.fromJson(json[r'parentProduct']),
        parentDomain: CdashigDomainRef.fromJson(json[r'parentDomain']),
        parentScenario: CdashigScenarioRef.fromJson(json[r'parentScenario']),
        rootItem: RootCdashigScenarioFieldRef.fromJson(json[r'rootItem']),
        priorVersion: CdashigScenarioFieldRef.fromJson(json[r'priorVersion']),
        sdtmigDatasetMappingTargets: SdtmigDatasetVariableRefTarget.listFromJson(json[r'sdtmigDatasetMappingTargets']),
      );
    }
    return null;
  }

  static List<CdashigScenarioFieldLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CdashigScenarioFieldLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CdashigScenarioFieldLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CdashigScenarioFieldLinks> mapFromJson(dynamic json) {
    final map = <String, CdashigScenarioFieldLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CdashigScenarioFieldLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CdashigScenarioFieldLinks-objects as value to a dart map
  static Map<String, List<CdashigScenarioFieldLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CdashigScenarioFieldLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CdashigScenarioFieldLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

