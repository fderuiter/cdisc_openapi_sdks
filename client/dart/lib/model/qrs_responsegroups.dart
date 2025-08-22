//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class QrsResponsegroups {
  /// Returns a new [QrsResponsegroups] instance.
  QrsResponsegroups({
    this.name,
    this.label,
    this.description,
    this.effectiveDate,
    this.untilDate,
    this.registrationStatus,
    this.version,
    this.qrsType,
    this.links,
  });

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
  String? label;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? effectiveDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? untilDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? registrationStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? qrsType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  QrsResponsegroupsLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QrsResponsegroups &&
    other.name == name &&
    other.label == label &&
    other.description == description &&
    other.effectiveDate == effectiveDate &&
    other.untilDate == untilDate &&
    other.registrationStatus == registrationStatus &&
    other.version == version &&
    other.qrsType == qrsType &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (effectiveDate == null ? 0 : effectiveDate!.hashCode) +
    (untilDate == null ? 0 : untilDate!.hashCode) +
    (registrationStatus == null ? 0 : registrationStatus!.hashCode) +
    (version == null ? 0 : version!.hashCode) +
    (qrsType == null ? 0 : qrsType!.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'QrsResponsegroups[name=$name, label=$label, description=$description, effectiveDate=$effectiveDate, untilDate=$untilDate, registrationStatus=$registrationStatus, version=$version, qrsType=$qrsType, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.effectiveDate != null) {
      json[r'effectiveDate'] = this.effectiveDate;
    } else {
      json[r'effectiveDate'] = null;
    }
    if (this.untilDate != null) {
      json[r'untilDate'] = this.untilDate;
    } else {
      json[r'untilDate'] = null;
    }
    if (this.registrationStatus != null) {
      json[r'registrationStatus'] = this.registrationStatus;
    } else {
      json[r'registrationStatus'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.qrsType != null) {
      json[r'qrsType'] = this.qrsType;
    } else {
      json[r'qrsType'] = null;
    }
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [QrsResponsegroups] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QrsResponsegroups? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QrsResponsegroups[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QrsResponsegroups[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QrsResponsegroups(
        name: mapValueOfType<String>(json, r'name'),
        label: mapValueOfType<String>(json, r'label'),
        description: mapValueOfType<String>(json, r'description'),
        effectiveDate: mapValueOfType<String>(json, r'effectiveDate'),
        untilDate: mapValueOfType<String>(json, r'untilDate'),
        registrationStatus: mapValueOfType<String>(json, r'registrationStatus'),
        version: mapValueOfType<String>(json, r'version'),
        qrsType: mapValueOfType<String>(json, r'qrsType'),
        links: QrsResponsegroupsLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<QrsResponsegroups> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QrsResponsegroups>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QrsResponsegroups.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QrsResponsegroups> mapFromJson(dynamic json) {
    final map = <String, QrsResponsegroups>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QrsResponsegroups.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QrsResponsegroups-objects as value to a dart map
  static Map<String, List<QrsResponsegroups>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QrsResponsegroups>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QrsResponsegroups.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

