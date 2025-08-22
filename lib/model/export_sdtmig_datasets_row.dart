//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExportSdtmigDatasetsRow {
  /// Returns a new [ExportSdtmigDatasetsRow] instance.
  ExportSdtmigDatasetsRow({
    this.version,
    this.class_,
    this.datasetName,
    this.datasetLabel,
    this.structure,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? class_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? datasetName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? datasetLabel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? structure;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExportSdtmigDatasetsRow &&
    other.version == version &&
    other.class_ == class_ &&
    other.datasetName == datasetName &&
    other.datasetLabel == datasetLabel &&
    other.structure == structure;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (version == null ? 0 : version!.hashCode) +
    (class_ == null ? 0 : class_!.hashCode) +
    (datasetName == null ? 0 : datasetName!.hashCode) +
    (datasetLabel == null ? 0 : datasetLabel!.hashCode) +
    (structure == null ? 0 : structure!.hashCode);

  @override
  String toString() => 'ExportSdtmigDatasetsRow[version=$version, class_=$class_, datasetName=$datasetName, datasetLabel=$datasetLabel, structure=$structure]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.version != null) {
      json[r'Version'] = this.version;
    } else {
      json[r'Version'] = null;
    }
    if (this.class_ != null) {
      json[r'Class'] = this.class_;
    } else {
      json[r'Class'] = null;
    }
    if (this.datasetName != null) {
      json[r'Dataset Name'] = this.datasetName;
    } else {
      json[r'Dataset Name'] = null;
    }
    if (this.datasetLabel != null) {
      json[r'Dataset Label'] = this.datasetLabel;
    } else {
      json[r'Dataset Label'] = null;
    }
    if (this.structure != null) {
      json[r'Structure'] = this.structure;
    } else {
      json[r'Structure'] = null;
    }
    return json;
  }

  /// Returns a new [ExportSdtmigDatasetsRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExportSdtmigDatasetsRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExportSdtmigDatasetsRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExportSdtmigDatasetsRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExportSdtmigDatasetsRow(
        version: mapValueOfType<String>(json, r'Version'),
        class_: mapValueOfType<String>(json, r'Class'),
        datasetName: mapValueOfType<String>(json, r'Dataset Name'),
        datasetLabel: mapValueOfType<String>(json, r'Dataset Label'),
        structure: mapValueOfType<String>(json, r'Structure'),
      );
    }
    return null;
  }

  static List<ExportSdtmigDatasetsRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportSdtmigDatasetsRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportSdtmigDatasetsRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExportSdtmigDatasetsRow> mapFromJson(dynamic json) {
    final map = <String, ExportSdtmigDatasetsRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExportSdtmigDatasetsRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExportSdtmigDatasetsRow-objects as value to a dart map
  static Map<String, List<ExportSdtmigDatasetsRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExportSdtmigDatasetsRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExportSdtmigDatasetsRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

