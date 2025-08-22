//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CtCodelistTerms {
  /// Returns a new [CtCodelistTerms] instance.
  CtCodelistTerms({
    this.conceptId,
    this.extensible,
    this.name,
    this.submissionValue,
    this.definition,
    this.preferredTerm,
    this.synonyms = const [],
    this.links,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? conceptId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? extensible;

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
  String? submissionValue;

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
  String? preferredTerm;

  List<String> synonyms;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CtCodelistTermsLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CtCodelistTerms &&
    other.conceptId == conceptId &&
    other.extensible == extensible &&
    other.name == name &&
    other.submissionValue == submissionValue &&
    other.definition == definition &&
    other.preferredTerm == preferredTerm &&
    _deepEquality.equals(other.synonyms, synonyms) &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (conceptId == null ? 0 : conceptId!.hashCode) +
    (extensible == null ? 0 : extensible!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (submissionValue == null ? 0 : submissionValue!.hashCode) +
    (definition == null ? 0 : definition!.hashCode) +
    (preferredTerm == null ? 0 : preferredTerm!.hashCode) +
    (synonyms.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'CtCodelistTerms[conceptId=$conceptId, extensible=$extensible, name=$name, submissionValue=$submissionValue, definition=$definition, preferredTerm=$preferredTerm, synonyms=$synonyms, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.conceptId != null) {
      json[r'conceptId'] = this.conceptId;
    } else {
      json[r'conceptId'] = null;
    }
    if (this.extensible != null) {
      json[r'extensible'] = this.extensible;
    } else {
      json[r'extensible'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.submissionValue != null) {
      json[r'submissionValue'] = this.submissionValue;
    } else {
      json[r'submissionValue'] = null;
    }
    if (this.definition != null) {
      json[r'definition'] = this.definition;
    } else {
      json[r'definition'] = null;
    }
    if (this.preferredTerm != null) {
      json[r'preferredTerm'] = this.preferredTerm;
    } else {
      json[r'preferredTerm'] = null;
    }
      json[r'synonyms'] = this.synonyms;
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [CtCodelistTerms] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CtCodelistTerms? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CtCodelistTerms[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CtCodelistTerms[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CtCodelistTerms(
        conceptId: mapValueOfType<String>(json, r'conceptId'),
        extensible: mapValueOfType<String>(json, r'extensible'),
        name: mapValueOfType<String>(json, r'name'),
        submissionValue: mapValueOfType<String>(json, r'submissionValue'),
        definition: mapValueOfType<String>(json, r'definition'),
        preferredTerm: mapValueOfType<String>(json, r'preferredTerm'),
        synonyms: json[r'synonyms'] is Iterable
            ? (json[r'synonyms'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        links: CtCodelistTermsLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<CtCodelistTerms> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CtCodelistTerms>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CtCodelistTerms.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CtCodelistTerms> mapFromJson(dynamic json) {
    final map = <String, CtCodelistTerms>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CtCodelistTerms.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CtCodelistTerms-objects as value to a dart map
  static Map<String, List<CtCodelistTerms>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CtCodelistTerms>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CtCodelistTerms.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

