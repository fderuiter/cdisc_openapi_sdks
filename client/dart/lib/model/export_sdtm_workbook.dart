//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExportSdtmWorkbook {
  /// Returns a new [ExportSdtmWorkbook] instance.
  ExportSdtmWorkbook({
    this.classVariables = const [],
    this.datasetVariables = const [],
    this.datasets = const [],
  });

  List<ExportSdtmClassVariablesRow> classVariables;

  List<ExportSdtmDatasetVariablesRow> datasetVariables;

  List<ExportSdtmDatasetsRow> datasets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExportSdtmWorkbook &&
    _deepEquality.equals(other.classVariables, classVariables) &&
    _deepEquality.equals(other.datasetVariables, datasetVariables) &&
    _deepEquality.equals(other.datasets, datasets);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (classVariables.hashCode) +
    (datasetVariables.hashCode) +
    (datasets.hashCode);

  @override
  String toString() => 'ExportSdtmWorkbook[classVariables=$classVariables, datasetVariables=$datasetVariables, datasets=$datasets]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'class-variables'] = this.classVariables;
      json[r'dataset-variables'] = this.datasetVariables;
      json[r'datasets'] = this.datasets;
    return json;
  }

  /// Returns a new [ExportSdtmWorkbook] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExportSdtmWorkbook? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExportSdtmWorkbook[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExportSdtmWorkbook[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExportSdtmWorkbook(
        classVariables: ExportSdtmClassVariablesRow.listFromJson(json[r'class-variables']),
        datasetVariables: ExportSdtmDatasetVariablesRow.listFromJson(json[r'dataset-variables']),
        datasets: ExportSdtmDatasetsRow.listFromJson(json[r'datasets']),
      );
    }
    return null;
  }

  static List<ExportSdtmWorkbook> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportSdtmWorkbook>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportSdtmWorkbook.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExportSdtmWorkbook> mapFromJson(dynamic json) {
    final map = <String, ExportSdtmWorkbook>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExportSdtmWorkbook.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExportSdtmWorkbook-objects as value to a dart map
  static Map<String, List<ExportSdtmWorkbook>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExportSdtmWorkbook>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExportSdtmWorkbook.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

