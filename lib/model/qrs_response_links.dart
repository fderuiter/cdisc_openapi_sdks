//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class QrsResponseLinks {
  /// Returns a new [QrsResponseLinks] instance.
  QrsResponseLinks({
    this.qrsResponseORRES,
    this.qrsResponseORRESU,
    this.qrsResponseSTRESC,
    this.qrsResponseSTRESCU,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RootCtTermRef? qrsResponseORRES;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RootCtTermRef? qrsResponseORRESU;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RootCtTermRef? qrsResponseSTRESC;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RootCtTermRef? qrsResponseSTRESCU;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QrsResponseLinks &&
    other.qrsResponseORRES == qrsResponseORRES &&
    other.qrsResponseORRESU == qrsResponseORRESU &&
    other.qrsResponseSTRESC == qrsResponseSTRESC &&
    other.qrsResponseSTRESCU == qrsResponseSTRESCU;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (qrsResponseORRES == null ? 0 : qrsResponseORRES!.hashCode) +
    (qrsResponseORRESU == null ? 0 : qrsResponseORRESU!.hashCode) +
    (qrsResponseSTRESC == null ? 0 : qrsResponseSTRESC!.hashCode) +
    (qrsResponseSTRESCU == null ? 0 : qrsResponseSTRESCU!.hashCode);

  @override
  String toString() => 'QrsResponseLinks[qrsResponseORRES=$qrsResponseORRES, qrsResponseORRESU=$qrsResponseORRESU, qrsResponseSTRESC=$qrsResponseSTRESC, qrsResponseSTRESCU=$qrsResponseSTRESCU]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.qrsResponseORRES != null) {
      json[r'qrsResponseORRES'] = this.qrsResponseORRES;
    } else {
      json[r'qrsResponseORRES'] = null;
    }
    if (this.qrsResponseORRESU != null) {
      json[r'qrsResponseORRESU'] = this.qrsResponseORRESU;
    } else {
      json[r'qrsResponseORRESU'] = null;
    }
    if (this.qrsResponseSTRESC != null) {
      json[r'qrsResponseSTRESC'] = this.qrsResponseSTRESC;
    } else {
      json[r'qrsResponseSTRESC'] = null;
    }
    if (this.qrsResponseSTRESCU != null) {
      json[r'qrsResponseSTRESCU'] = this.qrsResponseSTRESCU;
    } else {
      json[r'qrsResponseSTRESCU'] = null;
    }
    return json;
  }

  /// Returns a new [QrsResponseLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QrsResponseLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QrsResponseLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QrsResponseLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QrsResponseLinks(
        qrsResponseORRES: RootCtTermRef.fromJson(json[r'qrsResponseORRES']),
        qrsResponseORRESU: RootCtTermRef.fromJson(json[r'qrsResponseORRESU']),
        qrsResponseSTRESC: RootCtTermRef.fromJson(json[r'qrsResponseSTRESC']),
        qrsResponseSTRESCU: RootCtTermRef.fromJson(json[r'qrsResponseSTRESCU']),
      );
    }
    return null;
  }

  static List<QrsResponseLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QrsResponseLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QrsResponseLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QrsResponseLinks> mapFromJson(dynamic json) {
    final map = <String, QrsResponseLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QrsResponseLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QrsResponseLinks-objects as value to a dart map
  static Map<String, List<QrsResponseLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QrsResponseLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QrsResponseLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

