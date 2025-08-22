//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class QrsItemLinks {
  /// Returns a new [QrsItemLinks] instance.
  QrsItemLinks({
    this.qrsItemTEST,
    this.qrsItemTESTCD,
    this.qrsItemEVAL,
    this.qrsItemSCAT,
    this.responsegroup,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RootCtTermRef? qrsItemTEST;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RootCtTermRef? qrsItemTESTCD;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RootCtTermRef? qrsItemEVAL;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RootCtTermRef? qrsItemSCAT;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  QrsResponsegroup? responsegroup;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QrsItemLinks &&
    other.qrsItemTEST == qrsItemTEST &&
    other.qrsItemTESTCD == qrsItemTESTCD &&
    other.qrsItemEVAL == qrsItemEVAL &&
    other.qrsItemSCAT == qrsItemSCAT &&
    other.responsegroup == responsegroup;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (qrsItemTEST == null ? 0 : qrsItemTEST!.hashCode) +
    (qrsItemTESTCD == null ? 0 : qrsItemTESTCD!.hashCode) +
    (qrsItemEVAL == null ? 0 : qrsItemEVAL!.hashCode) +
    (qrsItemSCAT == null ? 0 : qrsItemSCAT!.hashCode) +
    (responsegroup == null ? 0 : responsegroup!.hashCode);

  @override
  String toString() => 'QrsItemLinks[qrsItemTEST=$qrsItemTEST, qrsItemTESTCD=$qrsItemTESTCD, qrsItemEVAL=$qrsItemEVAL, qrsItemSCAT=$qrsItemSCAT, responsegroup=$responsegroup]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.qrsItemTEST != null) {
      json[r'qrsItemTEST'] = this.qrsItemTEST;
    } else {
      json[r'qrsItemTEST'] = null;
    }
    if (this.qrsItemTESTCD != null) {
      json[r'qrsItemTESTCD'] = this.qrsItemTESTCD;
    } else {
      json[r'qrsItemTESTCD'] = null;
    }
    if (this.qrsItemEVAL != null) {
      json[r'qrsItemEVAL'] = this.qrsItemEVAL;
    } else {
      json[r'qrsItemEVAL'] = null;
    }
    if (this.qrsItemSCAT != null) {
      json[r'qrsItemSCAT'] = this.qrsItemSCAT;
    } else {
      json[r'qrsItemSCAT'] = null;
    }
    if (this.responsegroup != null) {
      json[r'responsegroup'] = this.responsegroup;
    } else {
      json[r'responsegroup'] = null;
    }
    return json;
  }

  /// Returns a new [QrsItemLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QrsItemLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QrsItemLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QrsItemLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QrsItemLinks(
        qrsItemTEST: RootCtTermRef.fromJson(json[r'qrsItemTEST']),
        qrsItemTESTCD: RootCtTermRef.fromJson(json[r'qrsItemTESTCD']),
        qrsItemEVAL: RootCtTermRef.fromJson(json[r'qrsItemEVAL']),
        qrsItemSCAT: RootCtTermRef.fromJson(json[r'qrsItemSCAT']),
        responsegroup: QrsResponsegroup.fromJson(json[r'responsegroup']),
      );
    }
    return null;
  }

  static List<QrsItemLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QrsItemLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QrsItemLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QrsItemLinks> mapFromJson(dynamic json) {
    final map = <String, QrsItemLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QrsItemLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QrsItemLinks-objects as value to a dart map
  static Map<String, List<QrsItemLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QrsItemLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QrsItemLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

