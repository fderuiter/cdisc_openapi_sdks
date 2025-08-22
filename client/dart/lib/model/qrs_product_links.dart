//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class QrsProductLinks {
  /// Returns a new [QrsProductLinks] instance.
  QrsProductLinks({
    this.self,
    this.priorVersion,
    this.qrsTermCAT,
    this.qrsItems,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  QrsProductRef? self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  QrsProductRef? priorVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RootCtTermRef? qrsTermCAT;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  QrsItemsRef? qrsItems;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QrsProductLinks &&
    other.self == self &&
    other.priorVersion == priorVersion &&
    other.qrsTermCAT == qrsTermCAT &&
    other.qrsItems == qrsItems;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (priorVersion == null ? 0 : priorVersion!.hashCode) +
    (qrsTermCAT == null ? 0 : qrsTermCAT!.hashCode) +
    (qrsItems == null ? 0 : qrsItems!.hashCode);

  @override
  String toString() => 'QrsProductLinks[self=$self, priorVersion=$priorVersion, qrsTermCAT=$qrsTermCAT, qrsItems=$qrsItems]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.self != null) {
      json[r'self'] = this.self;
    } else {
      json[r'self'] = null;
    }
    if (this.priorVersion != null) {
      json[r'priorVersion'] = this.priorVersion;
    } else {
      json[r'priorVersion'] = null;
    }
    if (this.qrsTermCAT != null) {
      json[r'qrsTermCAT'] = this.qrsTermCAT;
    } else {
      json[r'qrsTermCAT'] = null;
    }
    if (this.qrsItems != null) {
      json[r'qrsItems'] = this.qrsItems;
    } else {
      json[r'qrsItems'] = null;
    }
    return json;
  }

  /// Returns a new [QrsProductLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QrsProductLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QrsProductLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QrsProductLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QrsProductLinks(
        self: QrsProductRef.fromJson(json[r'self']),
        priorVersion: QrsProductRef.fromJson(json[r'priorVersion']),
        qrsTermCAT: RootCtTermRef.fromJson(json[r'qrsTermCAT']),
        qrsItems: QrsItemsRef.fromJson(json[r'qrsItems']),
      );
    }
    return null;
  }

  static List<QrsProductLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QrsProductLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QrsProductLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QrsProductLinks> mapFromJson(dynamic json) {
    final map = <String, QrsProductLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QrsProductLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QrsProductLinks-objects as value to a dart map
  static Map<String, List<QrsProductLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QrsProductLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QrsProductLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

