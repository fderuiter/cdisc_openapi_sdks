//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExportAdamVariablesRow {
  /// Returns a new [ExportAdamVariablesRow] instance.
  ExportAdamVariablesRow({
    this.version,
    this.dataStructureName,
    this.datasetName,
    this.variableGroup,
    this.variableName,
    this.variableLabel,
    this.type,
    this.codelistSlashControlledTerms,
    this.core,
    this.cDISCNotes,
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
  String? dataStructureName;

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
  String? variableGroup;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? variableName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? variableLabel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? codelistSlashControlledTerms;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? core;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cDISCNotes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExportAdamVariablesRow &&
    other.version == version &&
    other.dataStructureName == dataStructureName &&
    other.datasetName == datasetName &&
    other.variableGroup == variableGroup &&
    other.variableName == variableName &&
    other.variableLabel == variableLabel &&
    other.type == type &&
    other.codelistSlashControlledTerms == codelistSlashControlledTerms &&
    other.core == core &&
    other.cDISCNotes == cDISCNotes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (version == null ? 0 : version!.hashCode) +
    (dataStructureName == null ? 0 : dataStructureName!.hashCode) +
    (datasetName == null ? 0 : datasetName!.hashCode) +
    (variableGroup == null ? 0 : variableGroup!.hashCode) +
    (variableName == null ? 0 : variableName!.hashCode) +
    (variableLabel == null ? 0 : variableLabel!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (codelistSlashControlledTerms == null ? 0 : codelistSlashControlledTerms!.hashCode) +
    (core == null ? 0 : core!.hashCode) +
    (cDISCNotes == null ? 0 : cDISCNotes!.hashCode);

  @override
  String toString() => 'ExportAdamVariablesRow[version=$version, dataStructureName=$dataStructureName, datasetName=$datasetName, variableGroup=$variableGroup, variableName=$variableName, variableLabel=$variableLabel, type=$type, codelistSlashControlledTerms=$codelistSlashControlledTerms, core=$core, cDISCNotes=$cDISCNotes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.version != null) {
      json[r'Version'] = this.version;
    } else {
      json[r'Version'] = null;
    }
    if (this.dataStructureName != null) {
      json[r'Data Structure Name'] = this.dataStructureName;
    } else {
      json[r'Data Structure Name'] = null;
    }
    if (this.datasetName != null) {
      json[r'Dataset Name'] = this.datasetName;
    } else {
      json[r'Dataset Name'] = null;
    }
    if (this.variableGroup != null) {
      json[r'Variable Group'] = this.variableGroup;
    } else {
      json[r'Variable Group'] = null;
    }
    if (this.variableName != null) {
      json[r'Variable Name'] = this.variableName;
    } else {
      json[r'Variable Name'] = null;
    }
    if (this.variableLabel != null) {
      json[r'Variable Label'] = this.variableLabel;
    } else {
      json[r'Variable Label'] = null;
    }
    if (this.type != null) {
      json[r'Type'] = this.type;
    } else {
      json[r'Type'] = null;
    }
    if (this.codelistSlashControlledTerms != null) {
      json[r'Codelist/Controlled Terms'] = this.codelistSlashControlledTerms;
    } else {
      json[r'Codelist/Controlled Terms'] = null;
    }
    if (this.core != null) {
      json[r'Core'] = this.core;
    } else {
      json[r'Core'] = null;
    }
    if (this.cDISCNotes != null) {
      json[r'CDISC Notes'] = this.cDISCNotes;
    } else {
      json[r'CDISC Notes'] = null;
    }
    return json;
  }

  /// Returns a new [ExportAdamVariablesRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExportAdamVariablesRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExportAdamVariablesRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExportAdamVariablesRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExportAdamVariablesRow(
        version: mapValueOfType<String>(json, r'Version'),
        dataStructureName: mapValueOfType<String>(json, r'Data Structure Name'),
        datasetName: mapValueOfType<String>(json, r'Dataset Name'),
        variableGroup: mapValueOfType<String>(json, r'Variable Group'),
        variableName: mapValueOfType<String>(json, r'Variable Name'),
        variableLabel: mapValueOfType<String>(json, r'Variable Label'),
        type: mapValueOfType<String>(json, r'Type'),
        codelistSlashControlledTerms: mapValueOfType<String>(json, r'Codelist/Controlled Terms'),
        core: mapValueOfType<String>(json, r'Core'),
        cDISCNotes: mapValueOfType<String>(json, r'CDISC Notes'),
      );
    }
    return null;
  }

  static List<ExportAdamVariablesRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportAdamVariablesRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportAdamVariablesRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExportAdamVariablesRow> mapFromJson(dynamic json) {
    final map = <String, ExportAdamVariablesRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExportAdamVariablesRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExportAdamVariablesRow-objects as value to a dart map
  static Map<String, List<ExportAdamVariablesRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExportAdamVariablesRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExportAdamVariablesRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

