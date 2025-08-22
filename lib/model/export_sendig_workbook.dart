//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExportSendigWorkbook {
  /// Returns a new [ExportSendigWorkbook] instance.
  ExportSendigWorkbook({
    this.variables = const [],
    this.datasets = const [],
  });

  List<ExportSendigVariablesRow> variables;

  List<ExportSendigDatasetsRow> datasets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExportSendigWorkbook &&
    _deepEquality.equals(other.variables, variables) &&
    _deepEquality.equals(other.datasets, datasets);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (variables.hashCode) +
    (datasets.hashCode);

  @override
  String toString() => 'ExportSendigWorkbook[variables=$variables, datasets=$datasets]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'variables'] = this.variables;
      json[r'datasets'] = this.datasets;
    return json;
  }

  /// Returns a new [ExportSendigWorkbook] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExportSendigWorkbook? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExportSendigWorkbook[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExportSendigWorkbook[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExportSendigWorkbook(
        variables: ExportSendigVariablesRow.listFromJson(json[r'variables']),
        datasets: ExportSendigDatasetsRow.listFromJson(json[r'datasets']),
      );
    }
    return null;
  }

  static List<ExportSendigWorkbook> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportSendigWorkbook>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportSendigWorkbook.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExportSendigWorkbook> mapFromJson(dynamic json) {
    final map = <String, ExportSendigWorkbook>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExportSendigWorkbook.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExportSendigWorkbook-objects as value to a dart map
  static Map<String, List<ExportSendigWorkbook>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExportSendigWorkbook>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExportSendigWorkbook.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

