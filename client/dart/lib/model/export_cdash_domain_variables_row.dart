//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExportCdashDomainVariablesRow {
  /// Returns a new [ExportCdashDomainVariablesRow] instance.
  ExportCdashDomainVariablesRow({
    this.version,
    this.class_,
    this.domain,
    this.variableOrder,
    this.cDASHVariable,
    this.cDASHVariableLabel,
    this.dRAFTCDASHDefinition,
    this.domainSpecific,
    this.questionText,
    this.prompt,
    this.type,
    this.sDTMTarget = const [],
    this.mappingInstructions,
    this.controlledTerminologyCodelistName,
    this.implementationNotes,
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
  String? domain;

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
  String? cDASHVariable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cDASHVariableLabel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dRAFTCDASHDefinition;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainSpecific;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? questionText;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prompt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  List<String> sDTMTarget;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mappingInstructions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? controlledTerminologyCodelistName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? implementationNotes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExportCdashDomainVariablesRow &&
    other.version == version &&
    other.class_ == class_ &&
    other.domain == domain &&
    other.variableOrder == variableOrder &&
    other.cDASHVariable == cDASHVariable &&
    other.cDASHVariableLabel == cDASHVariableLabel &&
    other.dRAFTCDASHDefinition == dRAFTCDASHDefinition &&
    other.domainSpecific == domainSpecific &&
    other.questionText == questionText &&
    other.prompt == prompt &&
    other.type == type &&
    _deepEquality.equals(other.sDTMTarget, sDTMTarget) &&
    other.mappingInstructions == mappingInstructions &&
    other.controlledTerminologyCodelistName == controlledTerminologyCodelistName &&
    other.implementationNotes == implementationNotes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (version == null ? 0 : version!.hashCode) +
    (class_ == null ? 0 : class_!.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (variableOrder == null ? 0 : variableOrder!.hashCode) +
    (cDASHVariable == null ? 0 : cDASHVariable!.hashCode) +
    (cDASHVariableLabel == null ? 0 : cDASHVariableLabel!.hashCode) +
    (dRAFTCDASHDefinition == null ? 0 : dRAFTCDASHDefinition!.hashCode) +
    (domainSpecific == null ? 0 : domainSpecific!.hashCode) +
    (questionText == null ? 0 : questionText!.hashCode) +
    (prompt == null ? 0 : prompt!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (sDTMTarget.hashCode) +
    (mappingInstructions == null ? 0 : mappingInstructions!.hashCode) +
    (controlledTerminologyCodelistName == null ? 0 : controlledTerminologyCodelistName!.hashCode) +
    (implementationNotes == null ? 0 : implementationNotes!.hashCode);

  @override
  String toString() => 'ExportCdashDomainVariablesRow[version=$version, class_=$class_, domain=$domain, variableOrder=$variableOrder, cDASHVariable=$cDASHVariable, cDASHVariableLabel=$cDASHVariableLabel, dRAFTCDASHDefinition=$dRAFTCDASHDefinition, domainSpecific=$domainSpecific, questionText=$questionText, prompt=$prompt, type=$type, sDTMTarget=$sDTMTarget, mappingInstructions=$mappingInstructions, controlledTerminologyCodelistName=$controlledTerminologyCodelistName, implementationNotes=$implementationNotes]';

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
    if (this.domain != null) {
      json[r'Domain'] = this.domain;
    } else {
      json[r'Domain'] = null;
    }
    if (this.variableOrder != null) {
      json[r'Variable Order'] = this.variableOrder;
    } else {
      json[r'Variable Order'] = null;
    }
    if (this.cDASHVariable != null) {
      json[r'CDASH Variable'] = this.cDASHVariable;
    } else {
      json[r'CDASH Variable'] = null;
    }
    if (this.cDASHVariableLabel != null) {
      json[r'CDASH Variable Label'] = this.cDASHVariableLabel;
    } else {
      json[r'CDASH Variable Label'] = null;
    }
    if (this.dRAFTCDASHDefinition != null) {
      json[r'DRAFT CDASH Definition'] = this.dRAFTCDASHDefinition;
    } else {
      json[r'DRAFT CDASH Definition'] = null;
    }
    if (this.domainSpecific != null) {
      json[r'Domain Specific'] = this.domainSpecific;
    } else {
      json[r'Domain Specific'] = null;
    }
    if (this.questionText != null) {
      json[r'Question Text'] = this.questionText;
    } else {
      json[r'Question Text'] = null;
    }
    if (this.prompt != null) {
      json[r'Prompt'] = this.prompt;
    } else {
      json[r'Prompt'] = null;
    }
    if (this.type != null) {
      json[r'Type'] = this.type;
    } else {
      json[r'Type'] = null;
    }
      json[r'SDTM Target'] = this.sDTMTarget;
    if (this.mappingInstructions != null) {
      json[r'Mapping Instructions'] = this.mappingInstructions;
    } else {
      json[r'Mapping Instructions'] = null;
    }
    if (this.controlledTerminologyCodelistName != null) {
      json[r'Controlled Terminology Codelist Name'] = this.controlledTerminologyCodelistName;
    } else {
      json[r'Controlled Terminology Codelist Name'] = null;
    }
    if (this.implementationNotes != null) {
      json[r'Implementation Notes'] = this.implementationNotes;
    } else {
      json[r'Implementation Notes'] = null;
    }
    return json;
  }

  /// Returns a new [ExportCdashDomainVariablesRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExportCdashDomainVariablesRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExportCdashDomainVariablesRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExportCdashDomainVariablesRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExportCdashDomainVariablesRow(
        version: mapValueOfType<String>(json, r'Version'),
        class_: mapValueOfType<String>(json, r'Class'),
        domain: mapValueOfType<String>(json, r'Domain'),
        variableOrder: mapValueOfType<String>(json, r'Variable Order'),
        cDASHVariable: mapValueOfType<String>(json, r'CDASH Variable'),
        cDASHVariableLabel: mapValueOfType<String>(json, r'CDASH Variable Label'),
        dRAFTCDASHDefinition: mapValueOfType<String>(json, r'DRAFT CDASH Definition'),
        domainSpecific: mapValueOfType<String>(json, r'Domain Specific'),
        questionText: mapValueOfType<String>(json, r'Question Text'),
        prompt: mapValueOfType<String>(json, r'Prompt'),
        type: mapValueOfType<String>(json, r'Type'),
        sDTMTarget: json[r'SDTM Target'] is Iterable
            ? (json[r'SDTM Target'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        mappingInstructions: mapValueOfType<String>(json, r'Mapping Instructions'),
        controlledTerminologyCodelistName: mapValueOfType<String>(json, r'Controlled Terminology Codelist Name'),
        implementationNotes: mapValueOfType<String>(json, r'Implementation Notes'),
      );
    }
    return null;
  }

  static List<ExportCdashDomainVariablesRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportCdashDomainVariablesRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportCdashDomainVariablesRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExportCdashDomainVariablesRow> mapFromJson(dynamic json) {
    final map = <String, ExportCdashDomainVariablesRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExportCdashDomainVariablesRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExportCdashDomainVariablesRow-objects as value to a dart map
  static Map<String, List<ExportCdashDomainVariablesRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExportCdashDomainVariablesRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExportCdashDomainVariablesRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

