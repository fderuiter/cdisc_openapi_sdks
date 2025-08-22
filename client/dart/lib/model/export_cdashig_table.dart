//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExportCdashigTable {
  /// Returns a new [ExportCdashigTable] instance.
  ExportCdashigTable({
    this.domainVariables = const [],
    this.scenarioVariables = const [],
  });

  List<ExportCdashigDomainVariablesRow> domainVariables;

  List<ExportCdashigScenarioVariablesRow> scenarioVariables;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExportCdashigTable &&
    _deepEquality.equals(other.domainVariables, domainVariables) &&
    _deepEquality.equals(other.scenarioVariables, scenarioVariables);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domainVariables.hashCode) +
    (scenarioVariables.hashCode);

  @override
  String toString() => 'ExportCdashigTable[domainVariables=$domainVariables, scenarioVariables=$scenarioVariables]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domain-variables'] = this.domainVariables;
      json[r'scenario-variables'] = this.scenarioVariables;
    return json;
  }

  /// Returns a new [ExportCdashigTable] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExportCdashigTable? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExportCdashigTable[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExportCdashigTable[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExportCdashigTable(
        domainVariables: ExportCdashigDomainVariablesRow.listFromJson(json[r'domain-variables']),
        scenarioVariables: ExportCdashigScenarioVariablesRow.listFromJson(json[r'scenario-variables']),
      );
    }
    return null;
  }

  static List<ExportCdashigTable> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportCdashigTable>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportCdashigTable.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExportCdashigTable> mapFromJson(dynamic json) {
    final map = <String, ExportCdashigTable>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExportCdashigTable.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExportCdashigTable-objects as value to a dart map
  static Map<String, List<ExportCdashigTable>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExportCdashigTable>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExportCdashigTable.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

