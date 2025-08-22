//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdamVarsetRefElement {
  /// Returns a new [AdamVarsetRefElement] instance.
  AdamVarsetRefElement({
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
  bool operator ==(Object other) => identical(this, other) || other is AdamVarsetRefElement &&
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
  String toString() => 'AdamVarsetRefElement[href=$href, title=$title, type=$type]';

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

  /// Returns a new [AdamVarsetRefElement] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdamVarsetRefElement? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdamVarsetRefElement[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdamVarsetRefElement[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdamVarsetRefElement(
        href: mapValueOfType<String>(json, r'href'),
        title: mapValueOfType<String>(json, r'title'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<AdamVarsetRefElement> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdamVarsetRefElement>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdamVarsetRefElement.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdamVarsetRefElement> mapFromJson(dynamic json) {
    final map = <String, AdamVarsetRefElement>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdamVarsetRefElement.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdamVarsetRefElement-objects as value to a dart map
  static Map<String, List<AdamVarsetRefElement>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdamVarsetRefElement>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdamVarsetRefElement.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

