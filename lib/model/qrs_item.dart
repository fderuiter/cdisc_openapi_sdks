//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class QrsItem {
  /// Returns a new [QrsItem] instance.
  QrsItem({
    this.ordinal,
    this.label,
    this.questionText,
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
  String? label;

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
  QrsItemLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QrsItem &&
    other.ordinal == ordinal &&
    other.label == label &&
    other.questionText == questionText &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ordinal == null ? 0 : ordinal!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (questionText == null ? 0 : questionText!.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'QrsItem[ordinal=$ordinal, label=$label, questionText=$questionText, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ordinal != null) {
      json[r'ordinal'] = this.ordinal;
    } else {
      json[r'ordinal'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.questionText != null) {
      json[r'questionText'] = this.questionText;
    } else {
      json[r'questionText'] = null;
    }
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [QrsItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QrsItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QrsItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QrsItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QrsItem(
        ordinal: mapValueOfType<String>(json, r'ordinal'),
        label: mapValueOfType<String>(json, r'label'),
        questionText: mapValueOfType<String>(json, r'questionText'),
        links: QrsItemLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<QrsItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QrsItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QrsItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QrsItem> mapFromJson(dynamic json) {
    final map = <String, QrsItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QrsItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QrsItem-objects as value to a dart map
  static Map<String, List<QrsItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QrsItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QrsItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

