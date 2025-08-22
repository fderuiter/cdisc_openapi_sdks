//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExportSdtmClassVariablesRow {
  /// Returns a new [ExportSdtmClassVariablesRow] instance.
  ExportSdtmClassVariablesRow({
    this.version,
    this.variableOrder,
    this.class_,
    this.datasetName,
    this.variableName,
    this.variableLabel,
    this.type,
    this.controlledTermsCommaCodelistOrFormat,
    this.role,
    this.roleDescription,
    this.description,
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
  String? variableOrder;

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
  String? controlledTermsCommaCodelistOrFormat;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? role;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? roleDescription;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExportSdtmClassVariablesRow &&
    other.version == version &&
    other.variableOrder == variableOrder &&
    other.class_ == class_ &&
    other.datasetName == datasetName &&
    other.variableName == variableName &&
    other.variableLabel == variableLabel &&
    other.type == type &&
    other.controlledTermsCommaCodelistOrFormat == controlledTermsCommaCodelistOrFormat &&
    other.role == role &&
    other.roleDescription == roleDescription &&
    other.description == description;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (version == null ? 0 : version!.hashCode) +
    (variableOrder == null ? 0 : variableOrder!.hashCode) +
    (class_ == null ? 0 : class_!.hashCode) +
    (datasetName == null ? 0 : datasetName!.hashCode) +
    (variableName == null ? 0 : variableName!.hashCode) +
    (variableLabel == null ? 0 : variableLabel!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (controlledTermsCommaCodelistOrFormat == null ? 0 : controlledTermsCommaCodelistOrFormat!.hashCode) +
    (role == null ? 0 : role!.hashCode) +
    (roleDescription == null ? 0 : roleDescription!.hashCode) +
    (description == null ? 0 : description!.hashCode);

  @override
  String toString() => 'ExportSdtmClassVariablesRow[version=$version, variableOrder=$variableOrder, class_=$class_, datasetName=$datasetName, variableName=$variableName, variableLabel=$variableLabel, type=$type, controlledTermsCommaCodelistOrFormat=$controlledTermsCommaCodelistOrFormat, role=$role, roleDescription=$roleDescription, description=$description]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.version != null) {
      json[r'Version'] = this.version;
    } else {
      json[r'Version'] = null;
    }
    if (this.variableOrder != null) {
      json[r'Variable Order'] = this.variableOrder;
    } else {
      json[r'Variable Order'] = null;
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
    if (this.controlledTermsCommaCodelistOrFormat != null) {
      json[r'Controlled Terms, Codelist or Format'] = this.controlledTermsCommaCodelistOrFormat;
    } else {
      json[r'Controlled Terms, Codelist or Format'] = null;
    }
    if (this.role != null) {
      json[r'Role'] = this.role;
    } else {
      json[r'Role'] = null;
    }
    if (this.roleDescription != null) {
      json[r'Role Description'] = this.roleDescription;
    } else {
      json[r'Role Description'] = null;
    }
    if (this.description != null) {
      json[r'Description'] = this.description;
    } else {
      json[r'Description'] = null;
    }
    return json;
  }

  /// Returns a new [ExportSdtmClassVariablesRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExportSdtmClassVariablesRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExportSdtmClassVariablesRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExportSdtmClassVariablesRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExportSdtmClassVariablesRow(
        version: mapValueOfType<String>(json, r'Version'),
        variableOrder: mapValueOfType<String>(json, r'Variable Order'),
        class_: mapValueOfType<String>(json, r'Class'),
        datasetName: mapValueOfType<String>(json, r'Dataset Name'),
        variableName: mapValueOfType<String>(json, r'Variable Name'),
        variableLabel: mapValueOfType<String>(json, r'Variable Label'),
        type: mapValueOfType<String>(json, r'Type'),
        controlledTermsCommaCodelistOrFormat: mapValueOfType<String>(json, r'Controlled Terms, Codelist or Format'),
        role: mapValueOfType<String>(json, r'Role'),
        roleDescription: mapValueOfType<String>(json, r'Role Description'),
        description: mapValueOfType<String>(json, r'Description'),
      );
    }
    return null;
  }

  static List<ExportSdtmClassVariablesRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportSdtmClassVariablesRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportSdtmClassVariablesRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExportSdtmClassVariablesRow> mapFromJson(dynamic json) {
    final map = <String, ExportSdtmClassVariablesRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExportSdtmClassVariablesRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExportSdtmClassVariablesRow-objects as value to a dart map
  static Map<String, List<ExportSdtmClassVariablesRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExportSdtmClassVariablesRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExportSdtmClassVariablesRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

