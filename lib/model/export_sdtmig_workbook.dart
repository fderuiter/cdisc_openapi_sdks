//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExportSdtmigWorkbook {
  /// Returns a new [ExportSdtmigWorkbook] instance.
  ExportSdtmigWorkbook({
    this.variables = const [],
    this.datasets = const [],
  });

  List<ExportSdtmigVariablesRow> variables;

  List<ExportSdtmigDatasetsRow> datasets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExportSdtmigWorkbook &&
    _deepEquality.equals(other.variables, variables) &&
    _deepEquality.equals(other.datasets, datasets);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (variables.hashCode) +
    (datasets.hashCode);

  @override
  String toString() => 'ExportSdtmigWorkbook[variables=$variables, datasets=$datasets]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'variables'] = this.variables;
      json[r'datasets'] = this.datasets;
    return json;
  }

  /// Returns a new [ExportSdtmigWorkbook] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExportSdtmigWorkbook? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExportSdtmigWorkbook[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExportSdtmigWorkbook[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExportSdtmigWorkbook(
        variables: ExportSdtmigVariablesRow.listFromJson(json[r'variables']),
        datasets: ExportSdtmigDatasetsRow.listFromJson(json[r'datasets']),
      );
    }
    return null;
  }

  static List<ExportSdtmigWorkbook> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportSdtmigWorkbook>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportSdtmigWorkbook.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExportSdtmigWorkbook> mapFromJson(dynamic json) {
    final map = <String, ExportSdtmigWorkbook>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExportSdtmigWorkbook.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExportSdtmigWorkbook-objects as value to a dart map
  static Map<String, List<ExportSdtmigWorkbook>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExportSdtmigWorkbook>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExportSdtmigWorkbook.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

