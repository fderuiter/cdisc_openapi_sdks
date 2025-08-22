//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExportAdamVariablesTable {
  /// Returns a new [ExportAdamVariablesTable] instance.
  ExportAdamVariablesTable({
    this.variables = const [],
  });

  List<ExportAdamVariablesRow> variables;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExportAdamVariablesTable &&
    _deepEquality.equals(other.variables, variables);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (variables.hashCode);

  @override
  String toString() => 'ExportAdamVariablesTable[variables=$variables]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'variables'] = this.variables;
    return json;
  }

  /// Returns a new [ExportAdamVariablesTable] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExportAdamVariablesTable? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExportAdamVariablesTable[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExportAdamVariablesTable[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExportAdamVariablesTable(
        variables: ExportAdamVariablesRow.listFromJson(json[r'variables']),
      );
    }
    return null;
  }

  static List<ExportAdamVariablesTable> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportAdamVariablesTable>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportAdamVariablesTable.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExportAdamVariablesTable> mapFromJson(dynamic json) {
    final map = <String, ExportAdamVariablesTable>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExportAdamVariablesTable.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExportAdamVariablesTable-objects as value to a dart map
  static Map<String, List<ExportAdamVariablesTable>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExportAdamVariablesTable>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExportAdamVariablesTable.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

