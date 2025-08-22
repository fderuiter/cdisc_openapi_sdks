//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SdtmDatasetVariableLinks {
  /// Returns a new [SdtmDatasetVariableLinks] instance.
  SdtmDatasetVariableLinks({
    this.self,
    this.parentProduct,
    this.parentDataset,
    this.rootItem,
    this.priorVersion,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SdtmDatasetVariableRef? self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SdtmProductRef? parentProduct;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SdtmDatasetRef? parentDataset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RootSdtmDatasetVariableRef? rootItem;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SdtmDatasetVariableRef? priorVersion;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SdtmDatasetVariableLinks &&
    other.self == self &&
    other.parentProduct == parentProduct &&
    other.parentDataset == parentDataset &&
    other.rootItem == rootItem &&
    other.priorVersion == priorVersion;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (parentProduct == null ? 0 : parentProduct!.hashCode) +
    (parentDataset == null ? 0 : parentDataset!.hashCode) +
    (rootItem == null ? 0 : rootItem!.hashCode) +
    (priorVersion == null ? 0 : priorVersion!.hashCode);

  @override
  String toString() => 'SdtmDatasetVariableLinks[self=$self, parentProduct=$parentProduct, parentDataset=$parentDataset, rootItem=$rootItem, priorVersion=$priorVersion]';

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
    if (this.parentDataset != null) {
      json[r'parentDataset'] = this.parentDataset;
    } else {
      json[r'parentDataset'] = null;
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
    return json;
  }

  /// Returns a new [SdtmDatasetVariableLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SdtmDatasetVariableLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SdtmDatasetVariableLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SdtmDatasetVariableLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SdtmDatasetVariableLinks(
        self: SdtmDatasetVariableRef.fromJson(json[r'self']),
        parentProduct: SdtmProductRef.fromJson(json[r'parentProduct']),
        parentDataset: SdtmDatasetRef.fromJson(json[r'parentDataset']),
        rootItem: RootSdtmDatasetVariableRef.fromJson(json[r'rootItem']),
        priorVersion: SdtmDatasetVariableRef.fromJson(json[r'priorVersion']),
      );
    }
    return null;
  }

  static List<SdtmDatasetVariableLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SdtmDatasetVariableLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SdtmDatasetVariableLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SdtmDatasetVariableLinks> mapFromJson(dynamic json) {
    final map = <String, SdtmDatasetVariableLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SdtmDatasetVariableLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SdtmDatasetVariableLinks-objects as value to a dart map
  static Map<String, List<SdtmDatasetVariableLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SdtmDatasetVariableLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SdtmDatasetVariableLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

