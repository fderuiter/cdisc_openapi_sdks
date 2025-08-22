//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExportCtCodelist {
  /// Returns a new [ExportCtCodelist] instance.
  ExportCtCodelist({
    this.code,
    this.codelistCode,
    this.codelistExtensibleLeftParenthesisYesSlashNoRightParenthesis,
    this.codelistName,
    this.cDISCSubmissionValue,
    this.cDISCSynonymLeftParenthesisSRightParenthesis = const [],
    this.cDISCDefinition,
    this.nCIPreferredTerm,
    this.standardAndDate,
    this. = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? codelistCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? codelistExtensibleLeftParenthesisYesSlashNoRightParenthesis;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? codelistName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cDISCSubmissionValue;

  List<String> cDISCSynonymLeftParenthesisSRightParenthesis;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cDISCDefinition;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nCIPreferredTerm;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? standardAndDate;

  List<ExportCtTerm> ;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExportCtCodelist &&
    other.code == code &&
    other.codelistCode == codelistCode &&
    other.codelistExtensibleLeftParenthesisYesSlashNoRightParenthesis == codelistExtensibleLeftParenthesisYesSlashNoRightParenthesis &&
    other.codelistName == codelistName &&
    other.cDISCSubmissionValue == cDISCSubmissionValue &&
    _deepEquality.equals(other.cDISCSynonymLeftParenthesisSRightParenthesis, cDISCSynonymLeftParenthesisSRightParenthesis) &&
    other.cDISCDefinition == cDISCDefinition &&
    other.nCIPreferredTerm == nCIPreferredTerm &&
    other.standardAndDate == standardAndDate &&
    _deepEquality.equals(other., );

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code == null ? 0 : code!.hashCode) +
    (codelistCode == null ? 0 : codelistCode!.hashCode) +
    (codelistExtensibleLeftParenthesisYesSlashNoRightParenthesis == null ? 0 : codelistExtensibleLeftParenthesisYesSlashNoRightParenthesis!.hashCode) +
    (codelistName == null ? 0 : codelistName!.hashCode) +
    (cDISCSubmissionValue == null ? 0 : cDISCSubmissionValue!.hashCode) +
    (cDISCSynonymLeftParenthesisSRightParenthesis.hashCode) +
    (cDISCDefinition == null ? 0 : cDISCDefinition!.hashCode) +
    (nCIPreferredTerm == null ? 0 : nCIPreferredTerm!.hashCode) +
    (standardAndDate == null ? 0 : standardAndDate!.hashCode) +
    (.hashCode);

  @override
  String toString() => 'ExportCtCodelist[code=$code, codelistCode=$codelistCode, codelistExtensibleLeftParenthesisYesSlashNoRightParenthesis=$codelistExtensibleLeftParenthesisYesSlashNoRightParenthesis, codelistName=$codelistName, cDISCSubmissionValue=$cDISCSubmissionValue, cDISCSynonymLeftParenthesisSRightParenthesis=$cDISCSynonymLeftParenthesisSRightParenthesis, cDISCDefinition=$cDISCDefinition, nCIPreferredTerm=$nCIPreferredTerm, standardAndDate=$standardAndDate, =$]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.code != null) {
      json[r'Code'] = this.code;
    } else {
      json[r'Code'] = null;
    }
    if (this.codelistCode != null) {
      json[r'Codelist Code'] = this.codelistCode;
    } else {
      json[r'Codelist Code'] = null;
    }
    if (this.codelistExtensibleLeftParenthesisYesSlashNoRightParenthesis != null) {
      json[r'Codelist Extensible (Yes/No)'] = this.codelistExtensibleLeftParenthesisYesSlashNoRightParenthesis;
    } else {
      json[r'Codelist Extensible (Yes/No)'] = null;
    }
    if (this.codelistName != null) {
      json[r'Codelist Name'] = this.codelistName;
    } else {
      json[r'Codelist Name'] = null;
    }
    if (this.cDISCSubmissionValue != null) {
      json[r'CDISC Submission Value'] = this.cDISCSubmissionValue;
    } else {
      json[r'CDISC Submission Value'] = null;
    }
      json[r'CDISC Synonym(s)'] = this.cDISCSynonymLeftParenthesisSRightParenthesis;
    if (this.cDISCDefinition != null) {
      json[r'CDISC Definition'] = this.cDISCDefinition;
    } else {
      json[r'CDISC Definition'] = null;
    }
    if (this.nCIPreferredTerm != null) {
      json[r'NCI Preferred Term'] = this.nCIPreferredTerm;
    } else {
      json[r'NCI Preferred Term'] = null;
    }
    if (this.standardAndDate != null) {
      json[r'Standard and Date'] = this.standardAndDate;
    } else {
      json[r'Standard and Date'] = null;
    }
      json[r''] = this.;
    return json;
  }

  /// Returns a new [ExportCtCodelist] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExportCtCodelist? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExportCtCodelist[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExportCtCodelist[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExportCtCodelist(
        code: mapValueOfType<String>(json, r'Code'),
        codelistCode: mapValueOfType<String>(json, r'Codelist Code'),
        codelistExtensibleLeftParenthesisYesSlashNoRightParenthesis: mapValueOfType<String>(json, r'Codelist Extensible (Yes/No)'),
        codelistName: mapValueOfType<String>(json, r'Codelist Name'),
        cDISCSubmissionValue: mapValueOfType<String>(json, r'CDISC Submission Value'),
        cDISCSynonymLeftParenthesisSRightParenthesis: json[r'CDISC Synonym(s)'] is Iterable
            ? (json[r'CDISC Synonym(s)'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        cDISCDefinition: mapValueOfType<String>(json, r'CDISC Definition'),
        nCIPreferredTerm: mapValueOfType<String>(json, r'NCI Preferred Term'),
        standardAndDate: mapValueOfType<String>(json, r'Standard and Date'),
        : ExportCtTerm.listFromJson(json[r'']),
      );
    }
    return null;
  }

  static List<ExportCtCodelist> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportCtCodelist>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportCtCodelist.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExportCtCodelist> mapFromJson(dynamic json) {
    final map = <String, ExportCtCodelist>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExportCtCodelist.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExportCtCodelist-objects as value to a dart map
  static Map<String, List<ExportCtCodelist>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExportCtCodelist>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExportCtCodelist.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

