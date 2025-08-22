//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExportSdtmVariablesTable {
  /// Returns a new [ExportSdtmVariablesTable] instance.
  ExportSdtmVariablesTable({
    this.classVariables = const [],
    this.datasetVariables = const [],
  });

  List<ExportSdtmClassVariablesRow> classVariables;

  List<ExportSdtmDatasetVariablesRow> datasetVariables;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExportSdtmVariablesTable &&
    _deepEquality.equals(other.classVariables, classVariables) &&
    _deepEquality.equals(other.datasetVariables, datasetVariables);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (classVariables.hashCode) +
    (datasetVariables.hashCode);

  @override
  String toString() => 'ExportSdtmVariablesTable[classVariables=$classVariables, datasetVariables=$datasetVariables]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'class-variables'] = this.classVariables;
      json[r'dataset-variables'] = this.datasetVariables;
    return json;
  }

  /// Returns a new [ExportSdtmVariablesTable] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExportSdtmVariablesTable? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExportSdtmVariablesTable[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExportSdtmVariablesTable[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExportSdtmVariablesTable(
        classVariables: ExportSdtmClassVariablesRow.listFromJson(json[r'class-variables']),
        datasetVariables: ExportSdtmDatasetVariablesRow.listFromJson(json[r'dataset-variables']),
      );
    }
    return null;
  }

  static List<ExportSdtmVariablesTable> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportSdtmVariablesTable>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportSdtmVariablesTable.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExportSdtmVariablesTable> mapFromJson(dynamic json) {
    final map = <String, ExportSdtmVariablesTable>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExportSdtmVariablesTable.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExportSdtmVariablesTable-objects as value to a dart map
  static Map<String, List<ExportSdtmVariablesTable>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExportSdtmVariablesTable>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExportSdtmVariablesTable.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

