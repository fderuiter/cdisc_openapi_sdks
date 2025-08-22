//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExportCdashigDomainVariablesRow {
  /// Returns a new [ExportCdashigDomainVariablesRow] instance.
  ExportCdashigDomainVariablesRow({
    this.version,
    this.class_,
    this.domain,
    this.dataCollectionScenario,
    this.variableOrder,
    this.cDASHIGVariable,
    this.cDASHIGVariableLabel,
    this.dRAFTCDASHIGDefinition,
    this.questionText,
    this.prompt,
    this.type,
    this.cDASHIGCore,
    this.caseReportFormCompletionInstructions,
    this.sDTMIGTarget = const [],
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
  String? dataCollectionScenario;

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
  String? cDASHIGVariable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cDASHIGVariableLabel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dRAFTCDASHIGDefinition;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cDASHIGCore;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? caseReportFormCompletionInstructions;

  List<String> sDTMIGTarget;

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
  bool operator ==(Object other) => identical(this, other) || other is ExportCdashigDomainVariablesRow &&
    other.version == version &&
    other.class_ == class_ &&
    other.domain == domain &&
    other.dataCollectionScenario == dataCollectionScenario &&
    other.variableOrder == variableOrder &&
    other.cDASHIGVariable == cDASHIGVariable &&
    other.cDASHIGVariableLabel == cDASHIGVariableLabel &&
    other.dRAFTCDASHIGDefinition == dRAFTCDASHIGDefinition &&
    other.questionText == questionText &&
    other.prompt == prompt &&
    other.type == type &&
    other.cDASHIGCore == cDASHIGCore &&
    other.caseReportFormCompletionInstructions == caseReportFormCompletionInstructions &&
    _deepEquality.equals(other.sDTMIGTarget, sDTMIGTarget) &&
    other.mappingInstructions == mappingInstructions &&
    other.controlledTerminologyCodelistName == controlledTerminologyCodelistName &&
    other.implementationNotes == implementationNotes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (version == null ? 0 : version!.hashCode) +
    (class_ == null ? 0 : class_!.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (dataCollectionScenario == null ? 0 : dataCollectionScenario!.hashCode) +
    (variableOrder == null ? 0 : variableOrder!.hashCode) +
    (cDASHIGVariable == null ? 0 : cDASHIGVariable!.hashCode) +
    (cDASHIGVariableLabel == null ? 0 : cDASHIGVariableLabel!.hashCode) +
    (dRAFTCDASHIGDefinition == null ? 0 : dRAFTCDASHIGDefinition!.hashCode) +
    (questionText == null ? 0 : questionText!.hashCode) +
    (prompt == null ? 0 : prompt!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (cDASHIGCore == null ? 0 : cDASHIGCore!.hashCode) +
    (caseReportFormCompletionInstructions == null ? 0 : caseReportFormCompletionInstructions!.hashCode) +
    (sDTMIGTarget.hashCode) +
    (mappingInstructions == null ? 0 : mappingInstructions!.hashCode) +
    (controlledTerminologyCodelistName == null ? 0 : controlledTerminologyCodelistName!.hashCode) +
    (implementationNotes == null ? 0 : implementationNotes!.hashCode);

  @override
  String toString() => 'ExportCdashigDomainVariablesRow[version=$version, class_=$class_, domain=$domain, dataCollectionScenario=$dataCollectionScenario, variableOrder=$variableOrder, cDASHIGVariable=$cDASHIGVariable, cDASHIGVariableLabel=$cDASHIGVariableLabel, dRAFTCDASHIGDefinition=$dRAFTCDASHIGDefinition, questionText=$questionText, prompt=$prompt, type=$type, cDASHIGCore=$cDASHIGCore, caseReportFormCompletionInstructions=$caseReportFormCompletionInstructions, sDTMIGTarget=$sDTMIGTarget, mappingInstructions=$mappingInstructions, controlledTerminologyCodelistName=$controlledTerminologyCodelistName, implementationNotes=$implementationNotes]';

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
    if (this.dataCollectionScenario != null) {
      json[r'Data Collection Scenario'] = this.dataCollectionScenario;
    } else {
      json[r'Data Collection Scenario'] = null;
    }
    if (this.variableOrder != null) {
      json[r'Variable Order'] = this.variableOrder;
    } else {
      json[r'Variable Order'] = null;
    }
    if (this.cDASHIGVariable != null) {
      json[r'CDASHIG Variable'] = this.cDASHIGVariable;
    } else {
      json[r'CDASHIG Variable'] = null;
    }
    if (this.cDASHIGVariableLabel != null) {
      json[r'CDASHIG Variable Label'] = this.cDASHIGVariableLabel;
    } else {
      json[r'CDASHIG Variable Label'] = null;
    }
    if (this.dRAFTCDASHIGDefinition != null) {
      json[r'DRAFT CDASHIG Definition'] = this.dRAFTCDASHIGDefinition;
    } else {
      json[r'DRAFT CDASHIG Definition'] = null;
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
    if (this.cDASHIGCore != null) {
      json[r'CDASHIG Core'] = this.cDASHIGCore;
    } else {
      json[r'CDASHIG Core'] = null;
    }
    if (this.caseReportFormCompletionInstructions != null) {
      json[r'Case Report Form Completion Instructions'] = this.caseReportFormCompletionInstructions;
    } else {
      json[r'Case Report Form Completion Instructions'] = null;
    }
      json[r'SDTMIG Target'] = this.sDTMIGTarget;
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

  /// Returns a new [ExportCdashigDomainVariablesRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExportCdashigDomainVariablesRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExportCdashigDomainVariablesRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExportCdashigDomainVariablesRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExportCdashigDomainVariablesRow(
        version: mapValueOfType<String>(json, r'Version'),
        class_: mapValueOfType<String>(json, r'Class'),
        domain: mapValueOfType<String>(json, r'Domain'),
        dataCollectionScenario: mapValueOfType<String>(json, r'Data Collection Scenario'),
        variableOrder: mapValueOfType<String>(json, r'Variable Order'),
        cDASHIGVariable: mapValueOfType<String>(json, r'CDASHIG Variable'),
        cDASHIGVariableLabel: mapValueOfType<String>(json, r'CDASHIG Variable Label'),
        dRAFTCDASHIGDefinition: mapValueOfType<String>(json, r'DRAFT CDASHIG Definition'),
        questionText: mapValueOfType<String>(json, r'Question Text'),
        prompt: mapValueOfType<String>(json, r'Prompt'),
        type: mapValueOfType<String>(json, r'Type'),
        cDASHIGCore: mapValueOfType<String>(json, r'CDASHIG Core'),
        caseReportFormCompletionInstructions: mapValueOfType<String>(json, r'Case Report Form Completion Instructions'),
        sDTMIGTarget: json[r'SDTMIG Target'] is Iterable
            ? (json[r'SDTMIG Target'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        mappingInstructions: mapValueOfType<String>(json, r'Mapping Instructions'),
        controlledTerminologyCodelistName: mapValueOfType<String>(json, r'Controlled Terminology Codelist Name'),
        implementationNotes: mapValueOfType<String>(json, r'Implementation Notes'),
      );
    }
    return null;
  }

  static List<ExportCdashigDomainVariablesRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportCdashigDomainVariablesRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportCdashigDomainVariablesRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExportCdashigDomainVariablesRow> mapFromJson(dynamic json) {
    final map = <String, ExportCdashigDomainVariablesRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExportCdashigDomainVariablesRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExportCdashigDomainVariablesRow-objects as value to a dart map
  static Map<String, List<ExportCdashigDomainVariablesRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExportCdashigDomainVariablesRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExportCdashigDomainVariablesRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

