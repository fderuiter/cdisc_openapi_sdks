//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CtTerm {
  /// Returns a new [CtTerm] instance.
  CtTerm({
    this.conceptId,
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
  CtTermLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CtTerm &&
    other.conceptId == conceptId &&
    other.submissionValue == submissionValue &&
    other.definition == definition &&
    other.preferredTerm == preferredTerm &&
    _deepEquality.equals(other.synonyms, synonyms) &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (conceptId == null ? 0 : conceptId!.hashCode) +
    (submissionValue == null ? 0 : submissionValue!.hashCode) +
    (definition == null ? 0 : definition!.hashCode) +
    (preferredTerm == null ? 0 : preferredTerm!.hashCode) +
    (synonyms.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'CtTerm[conceptId=$conceptId, submissionValue=$submissionValue, definition=$definition, preferredTerm=$preferredTerm, synonyms=$synonyms, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.conceptId != null) {
      json[r'conceptId'] = this.conceptId;
    } else {
      json[r'conceptId'] = null;
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

  /// Returns a new [CtTerm] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CtTerm? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CtTerm[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CtTerm[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CtTerm(
        conceptId: mapValueOfType<String>(json, r'conceptId'),
        submissionValue: mapValueOfType<String>(json, r'submissionValue'),
        definition: mapValueOfType<String>(json, r'definition'),
        preferredTerm: mapValueOfType<String>(json, r'preferredTerm'),
        synonyms: json[r'synonyms'] is Iterable
            ? (json[r'synonyms'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        links: CtTermLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<CtTerm> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CtTerm>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CtTerm.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CtTerm> mapFromJson(dynamic json) {
    final map = <String, CtTerm>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CtTerm.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CtTerm-objects as value to a dart map
  static Map<String, List<CtTerm>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CtTerm>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CtTerm.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

