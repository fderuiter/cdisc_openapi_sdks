//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CdashigDomainField {
  /// Returns a new [CdashigDomainField] instance.
  CdashigDomainField({
    this.ordinal,
    this.name,
    this.label,
    this.definition,
    this.questionText,
    this.prompt,
    this.completionInstructions,
    this.implementationNotes,
    this.simpleDatatype,
    this.mappingInstructions,
    this.core,
    this.links,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ordinal;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? definition;

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
  String? completionInstructions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? implementationNotes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? simpleDatatype;

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
  String? core;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CdashigDomainFieldLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CdashigDomainField &&
    other.ordinal == ordinal &&
    other.name == name &&
    other.label == label &&
    other.definition == definition &&
    other.questionText == questionText &&
    other.prompt == prompt &&
    other.completionInstructions == completionInstructions &&
    other.implementationNotes == implementationNotes &&
    other.simpleDatatype == simpleDatatype &&
    other.mappingInstructions == mappingInstructions &&
    other.core == core &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ordinal == null ? 0 : ordinal!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (definition == null ? 0 : definition!.hashCode) +
    (questionText == null ? 0 : questionText!.hashCode) +
    (prompt == null ? 0 : prompt!.hashCode) +
    (completionInstructions == null ? 0 : completionInstructions!.hashCode) +
    (implementationNotes == null ? 0 : implementationNotes!.hashCode) +
    (simpleDatatype == null ? 0 : simpleDatatype!.hashCode) +
    (mappingInstructions == null ? 0 : mappingInstructions!.hashCode) +
    (core == null ? 0 : core!.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'CdashigDomainField[ordinal=$ordinal, name=$name, label=$label, definition=$definition, questionText=$questionText, prompt=$prompt, completionInstructions=$completionInstructions, implementationNotes=$implementationNotes, simpleDatatype=$simpleDatatype, mappingInstructions=$mappingInstructions, core=$core, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ordinal != null) {
      json[r'ordinal'] = this.ordinal;
    } else {
      json[r'ordinal'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.definition != null) {
      json[r'definition'] = this.definition;
    } else {
      json[r'definition'] = null;
    }
    if (this.questionText != null) {
      json[r'questionText'] = this.questionText;
    } else {
      json[r'questionText'] = null;
    }
    if (this.prompt != null) {
      json[r'prompt'] = this.prompt;
    } else {
      json[r'prompt'] = null;
    }
    if (this.completionInstructions != null) {
      json[r'completionInstructions'] = this.completionInstructions;
    } else {
      json[r'completionInstructions'] = null;
    }
    if (this.implementationNotes != null) {
      json[r'implementationNotes'] = this.implementationNotes;
    } else {
      json[r'implementationNotes'] = null;
    }
    if (this.simpleDatatype != null) {
      json[r'simpleDatatype'] = this.simpleDatatype;
    } else {
      json[r'simpleDatatype'] = null;
    }
    if (this.mappingInstructions != null) {
      json[r'mappingInstructions'] = this.mappingInstructions;
    } else {
      json[r'mappingInstructions'] = null;
    }
    if (this.core != null) {
      json[r'core'] = this.core;
    } else {
      json[r'core'] = null;
    }
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [CdashigDomainField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CdashigDomainField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CdashigDomainField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CdashigDomainField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CdashigDomainField(
        ordinal: mapValueOfType<String>(json, r'ordinal'),
        name: mapValueOfType<String>(json, r'name'),
        label: mapValueOfType<String>(json, r'label'),
        definition: mapValueOfType<String>(json, r'definition'),
        questionText: mapValueOfType<String>(json, r'questionText'),
        prompt: mapValueOfType<String>(json, r'prompt'),
        completionInstructions: mapValueOfType<String>(json, r'completionInstructions'),
        implementationNotes: mapValueOfType<String>(json, r'implementationNotes'),
        simpleDatatype: mapValueOfType<String>(json, r'simpleDatatype'),
        mappingInstructions: mapValueOfType<String>(json, r'mappingInstructions'),
        core: mapValueOfType<String>(json, r'core'),
        links: CdashigDomainFieldLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<CdashigDomainField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CdashigDomainField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CdashigDomainField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CdashigDomainField> mapFromJson(dynamic json) {
    final map = <String, CdashigDomainField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CdashigDomainField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CdashigDomainField-objects as value to a dart map
  static Map<String, List<CdashigDomainField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CdashigDomainField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CdashigDomainField.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

