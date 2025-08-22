//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SdtmClassVariableRefQualifies {
  /// Returns a new [SdtmClassVariableRefQualifies] instance.
  SdtmClassVariableRefQualifies({
    this.href,
    this.title,
    this.type,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? href;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SdtmClassVariableRefQualifies &&
    other.href == href &&
    other.title == title &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (href == null ? 0 : href!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'SdtmClassVariableRefQualifies[href=$href, title=$title, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.href != null) {
      json[r'href'] = this.href;
    } else {
      json[r'href'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [SdtmClassVariableRefQualifies] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SdtmClassVariableRefQualifies? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SdtmClassVariableRefQualifies[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SdtmClassVariableRefQualifies[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SdtmClassVariableRefQualifies(
        href: mapValueOfType<String>(json, r'href'),
        title: mapValueOfType<String>(json, r'title'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<SdtmClassVariableRefQualifies> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SdtmClassVariableRefQualifies>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SdtmClassVariableRefQualifies.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SdtmClassVariableRefQualifies> mapFromJson(dynamic json) {
    final map = <String, SdtmClassVariableRefQualifies>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SdtmClassVariableRefQualifies.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SdtmClassVariableRefQualifies-objects as value to a dart map
  static Map<String, List<SdtmClassVariableRefQualifies>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SdtmClassVariableRefQualifies>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SdtmClassVariableRefQualifies.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

