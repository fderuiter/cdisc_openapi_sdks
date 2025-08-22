//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class QrsResponsegroupsLinks {
  /// Returns a new [QrsResponsegroupsLinks] instance.
  QrsResponsegroupsLinks({
    this.self,
    this.responsegroups = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  QrsResponsegroupsRef? self;

  List<QrsResponsegroupRefElement> responsegroups;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QrsResponsegroupsLinks &&
    other.self == self &&
    _deepEquality.equals(other.responsegroups, responsegroups);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (responsegroups.hashCode);

  @override
  String toString() => 'QrsResponsegroupsLinks[self=$self, responsegroups=$responsegroups]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.self != null) {
      json[r'self'] = this.self;
    } else {
      json[r'self'] = null;
    }
      json[r'responsegroups'] = this.responsegroups;
    return json;
  }

  /// Returns a new [QrsResponsegroupsLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QrsResponsegroupsLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QrsResponsegroupsLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QrsResponsegroupsLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QrsResponsegroupsLinks(
        self: QrsResponsegroupsRef.fromJson(json[r'self']),
        responsegroups: QrsResponsegroupRefElement.listFromJson(json[r'responsegroups']),
      );
    }
    return null;
  }

  static List<QrsResponsegroupsLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QrsResponsegroupsLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QrsResponsegroupsLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QrsResponsegroupsLinks> mapFromJson(dynamic json) {
    final map = <String, QrsResponsegroupsLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QrsResponsegroupsLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QrsResponsegroupsLinks-objects as value to a dart map
  static Map<String, List<QrsResponsegroupsLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QrsResponsegroupsLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QrsResponsegroupsLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

