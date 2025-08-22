//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SdtmigDataset {
  /// Returns a new [SdtmigDataset] instance.
  SdtmigDataset({
    this.ordinal,
    this.name,
    this.label,
    this.description,
    this.datasetStructure,
    this.links,
    this.datasetVariables = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ordinal;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? datasetStructure;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SdtmigDatasetLinks? links;

  List<SdtmigDatasetVariable> datasetVariables;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SdtmigDataset &&
    other.ordinal == ordinal &&
    other.name == name &&
    other.label == label &&
    other.description == description &&
    other.datasetStructure == datasetStructure &&
    other.links == links &&
    _deepEquality.equals(other.datasetVariables, datasetVariables);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ordinal == null ? 0 : ordinal!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (datasetStructure == null ? 0 : datasetStructure!.hashCode) +
    (links == null ? 0 : links!.hashCode) +
    (datasetVariables.hashCode);

  @override
  String toString() => 'SdtmigDataset[ordinal=$ordinal, name=$name, label=$label, description=$description, datasetStructure=$datasetStructure, links=$links, datasetVariables=$datasetVariables]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ordinal != null) {
      json[r'ordinal'] = this.ordinal;
    } else {
      json[r'ordinal'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.datasetStructure != null) {
      json[r'datasetStructure'] = this.datasetStructure;
    } else {
      json[r'datasetStructure'] = null;
    }
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
      json[r'datasetVariables'] = this.datasetVariables;
    return json;
  }

  /// Returns a new [SdtmigDataset] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SdtmigDataset? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SdtmigDataset[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SdtmigDataset[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SdtmigDataset(
        ordinal: mapValueOfType<String>(json, r'ordinal'),
        name: mapValueOfType<String>(json, r'name'),
        label: mapValueOfType<String>(json, r'label'),
        description: mapValueOfType<String>(json, r'description'),
        datasetStructure: mapValueOfType<String>(json, r'datasetStructure'),
        links: SdtmigDatasetLinks.fromJson(json[r'_links']),
        datasetVariables: SdtmigDatasetVariable.listFromJson(json[r'datasetVariables']),
      );
    }
    return null;
  }

  static List<SdtmigDataset> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SdtmigDataset>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SdtmigDataset.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SdtmigDataset> mapFromJson(dynamic json) {
    final map = <String, SdtmigDataset>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SdtmigDataset.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SdtmigDataset-objects as value to a dart map
  static Map<String, List<SdtmigDataset>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SdtmigDataset>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SdtmigDataset.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

