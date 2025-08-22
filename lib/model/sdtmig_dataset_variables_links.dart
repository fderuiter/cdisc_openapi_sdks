//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SdtmigDatasetVariablesLinks {
  /// Returns a new [SdtmigDatasetVariablesLinks] instance.
  SdtmigDatasetVariablesLinks({
    this.self,
    this.modelDataset,
    this.parentProduct,
    this.parentClass,
    this.priorVersion,
    this.datasetVariables = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SdtmigDatasetVariablesRef? self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SdtmDatasetRef? modelDataset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SdtmigProductRef? parentProduct;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SdtmigClassRef? parentClass;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SdtmigDatasetVariablesRef? priorVersion;

  List<SdtmigDatasetVariableRefElement> datasetVariables;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SdtmigDatasetVariablesLinks &&
    other.self == self &&
    other.modelDataset == modelDataset &&
    other.parentProduct == parentProduct &&
    other.parentClass == parentClass &&
    other.priorVersion == priorVersion &&
    _deepEquality.equals(other.datasetVariables, datasetVariables);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (modelDataset == null ? 0 : modelDataset!.hashCode) +
    (parentProduct == null ? 0 : parentProduct!.hashCode) +
    (parentClass == null ? 0 : parentClass!.hashCode) +
    (priorVersion == null ? 0 : priorVersion!.hashCode) +
    (datasetVariables.hashCode);

  @override
  String toString() => 'SdtmigDatasetVariablesLinks[self=$self, modelDataset=$modelDataset, parentProduct=$parentProduct, parentClass=$parentClass, priorVersion=$priorVersion, datasetVariables=$datasetVariables]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.self != null) {
      json[r'self'] = this.self;
    } else {
      json[r'self'] = null;
    }
    if (this.modelDataset != null) {
      json[r'modelDataset'] = this.modelDataset;
    } else {
      json[r'modelDataset'] = null;
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
      json[r'datasetVariables'] = this.datasetVariables;
    return json;
  }

  /// Returns a new [SdtmigDatasetVariablesLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SdtmigDatasetVariablesLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SdtmigDatasetVariablesLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SdtmigDatasetVariablesLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SdtmigDatasetVariablesLinks(
        self: SdtmigDatasetVariablesRef.fromJson(json[r'self']),
        modelDataset: SdtmDatasetRef.fromJson(json[r'modelDataset']),
        parentProduct: SdtmigProductRef.fromJson(json[r'parentProduct']),
        parentClass: SdtmigClassRef.fromJson(json[r'parentClass']),
        priorVersion: SdtmigDatasetVariablesRef.fromJson(json[r'priorVersion']),
        datasetVariables: SdtmigDatasetVariableRefElement.listFromJson(json[r'datasetVariables']),
      );
    }
    return null;
  }

  static List<SdtmigDatasetVariablesLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SdtmigDatasetVariablesLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SdtmigDatasetVariablesLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SdtmigDatasetVariablesLinks> mapFromJson(dynamic json) {
    final map = <String, SdtmigDatasetVariablesLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SdtmigDatasetVariablesLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SdtmigDatasetVariablesLinks-objects as value to a dart map
  static Map<String, List<SdtmigDatasetVariablesLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SdtmigDatasetVariablesLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SdtmigDatasetVariablesLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

