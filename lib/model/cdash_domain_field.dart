//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CdashDomainField {
  /// Returns a new [CdashDomainField] instance.
  CdashDomainField({
    this.ordinal,
    this.name,
    this.label,
    this.definition,
    this.domainSpecific,
    this.questionText,
    this.prompt,
    this.simpleDatatype,
    this.implementationNotes,
    this.mappingInstructions,
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
  String? simpleDatatype;

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
  String? mappingInstructions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CdashDomainFieldLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CdashDomainField &&
    other.ordinal == ordinal &&
    other.name == name &&
    other.label == label &&
    other.definition == definition &&
    other.domainSpecific == domainSpecific &&
    other.questionText == questionText &&
    other.prompt == prompt &&
    other.simpleDatatype == simpleDatatype &&
    other.implementationNotes == implementationNotes &&
    other.mappingInstructions == mappingInstructions &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ordinal == null ? 0 : ordinal!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (definition == null ? 0 : definition!.hashCode) +
    (domainSpecific == null ? 0 : domainSpecific!.hashCode) +
    (questionText == null ? 0 : questionText!.hashCode) +
    (prompt == null ? 0 : prompt!.hashCode) +
    (simpleDatatype == null ? 0 : simpleDatatype!.hashCode) +
    (implementationNotes == null ? 0 : implementationNotes!.hashCode) +
    (mappingInstructions == null ? 0 : mappingInstructions!.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'CdashDomainField[ordinal=$ordinal, name=$name, label=$label, definition=$definition, domainSpecific=$domainSpecific, questionText=$questionText, prompt=$prompt, simpleDatatype=$simpleDatatype, implementationNotes=$implementationNotes, mappingInstructions=$mappingInstructions, links=$links]';

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
    if (this.domainSpecific != null) {
      json[r'domainSpecific'] = this.domainSpecific;
    } else {
      json[r'domainSpecific'] = null;
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
    if (this.simpleDatatype != null) {
      json[r'simpleDatatype'] = this.simpleDatatype;
    } else {
      json[r'simpleDatatype'] = null;
    }
    if (this.implementationNotes != null) {
      json[r'implementationNotes'] = this.implementationNotes;
    } else {
      json[r'implementationNotes'] = null;
    }
    if (this.mappingInstructions != null) {
      json[r'mappingInstructions'] = this.mappingInstructions;
    } else {
      json[r'mappingInstructions'] = null;
    }
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [CdashDomainField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CdashDomainField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CdashDomainField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CdashDomainField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CdashDomainField(
        ordinal: mapValueOfType<String>(json, r'ordinal'),
        name: mapValueOfType<String>(json, r'name'),
        label: mapValueOfType<String>(json, r'label'),
        definition: mapValueOfType<String>(json, r'definition'),
        domainSpecific: mapValueOfType<String>(json, r'domainSpecific'),
        questionText: mapValueOfType<String>(json, r'questionText'),
        prompt: mapValueOfType<String>(json, r'prompt'),
        simpleDatatype: mapValueOfType<String>(json, r'simpleDatatype'),
        implementationNotes: mapValueOfType<String>(json, r'implementationNotes'),
        mappingInstructions: mapValueOfType<String>(json, r'mappingInstructions'),
        links: CdashDomainFieldLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<CdashDomainField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CdashDomainField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CdashDomainField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CdashDomainField> mapFromJson(dynamic json) {
    final map = <String, CdashDomainField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CdashDomainField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CdashDomainField-objects as value to a dart map
  static Map<String, List<CdashDomainField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CdashDomainField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CdashDomainField.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

