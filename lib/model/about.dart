//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class About {
  /// Returns a new [About] instance.
  About({
    this.links,
    this.releaseNotes,
    this.apiDocumentation,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AboutLinks? links;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? releaseNotes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? apiDocumentation;

  @override
  bool operator ==(Object other) => identical(this, other) || other is About &&
    other.links == links &&
    other.releaseNotes == releaseNotes &&
    other.apiDocumentation == apiDocumentation;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (links == null ? 0 : links!.hashCode) +
    (releaseNotes == null ? 0 : releaseNotes!.hashCode) +
    (apiDocumentation == null ? 0 : apiDocumentation!.hashCode);

  @override
  String toString() => 'About[links=$links, releaseNotes=$releaseNotes, apiDocumentation=$apiDocumentation]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    if (this.releaseNotes != null) {
      json[r'release-notes'] = this.releaseNotes;
    } else {
      json[r'release-notes'] = null;
    }
    if (this.apiDocumentation != null) {
      json[r'api-documentation'] = this.apiDocumentation;
    } else {
      json[r'api-documentation'] = null;
    }
    return json;
  }

  /// Returns a new [About] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static About? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "About[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "About[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return About(
        links: AboutLinks.fromJson(json[r'_links']),
        releaseNotes: mapValueOfType<String>(json, r'release-notes'),
        apiDocumentation: mapValueOfType<String>(json, r'api-documentation'),
      );
    }
    return null;
  }

  static List<About> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <About>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = About.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, About> mapFromJson(dynamic json) {
    final map = <String, About>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = About.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of About-objects as value to a dart map
  static Map<String, List<About>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<About>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = About.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

