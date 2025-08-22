//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExportCdashTable {
  /// Returns a new [ExportCdashTable] instance.
  ExportCdashTable({
    this.classVariables = const [],
    this.domainVariables = const [],
  });

  List<ExportCdashClassVariablesRow> classVariables;

  List<ExportCdashDomainVariablesRow> domainVariables;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExportCdashTable &&
    _deepEquality.equals(other.classVariables, classVariables) &&
    _deepEquality.equals(other.domainVariables, domainVariables);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (classVariables.hashCode) +
    (domainVariables.hashCode);

  @override
  String toString() => 'ExportCdashTable[classVariables=$classVariables, domainVariables=$domainVariables]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'class-variables'] = this.classVariables;
      json[r'domain-variables'] = this.domainVariables;
    return json;
  }

  /// Returns a new [ExportCdashTable] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExportCdashTable? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExportCdashTable[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExportCdashTable[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExportCdashTable(
        classVariables: ExportCdashClassVariablesRow.listFromJson(json[r'class-variables']),
        domainVariables: ExportCdashDomainVariablesRow.listFromJson(json[r'domain-variables']),
      );
    }
    return null;
  }

  static List<ExportCdashTable> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportCdashTable>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportCdashTable.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExportCdashTable> mapFromJson(dynamic json) {
    final map = <String, ExportCdashTable>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExportCdashTable.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExportCdashTable-objects as value to a dart map
  static Map<String, List<ExportCdashTable>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExportCdashTable>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExportCdashTable.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

