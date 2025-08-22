//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Lastupdated {
  /// Returns a new [Lastupdated] instance.
  Lastupdated({
    this.links,
    this.overall,
    this.dataAnalysis,
    this.dataCollection,
    this.dataTabulation,
    this.measure,
    this.terminology,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LastupdatedLinks? links;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? overall;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataAnalysis;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataCollection;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataTabulation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? measure;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? terminology;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Lastupdated &&
    other.links == links &&
    other.overall == overall &&
    other.dataAnalysis == dataAnalysis &&
    other.dataCollection == dataCollection &&
    other.dataTabulation == dataTabulation &&
    other.measure == measure &&
    other.terminology == terminology;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (links == null ? 0 : links!.hashCode) +
    (overall == null ? 0 : overall!.hashCode) +
    (dataAnalysis == null ? 0 : dataAnalysis!.hashCode) +
    (dataCollection == null ? 0 : dataCollection!.hashCode) +
    (dataTabulation == null ? 0 : dataTabulation!.hashCode) +
    (measure == null ? 0 : measure!.hashCode) +
    (terminology == null ? 0 : terminology!.hashCode);

  @override
  String toString() => 'Lastupdated[links=$links, overall=$overall, dataAnalysis=$dataAnalysis, dataCollection=$dataCollection, dataTabulation=$dataTabulation, measure=$measure, terminology=$terminology]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    if (this.overall != null) {
      json[r'overall'] = this.overall;
    } else {
      json[r'overall'] = null;
    }
    if (this.dataAnalysis != null) {
      json[r'data-analysis'] = this.dataAnalysis;
    } else {
      json[r'data-analysis'] = null;
    }
    if (this.dataCollection != null) {
      json[r'data-collection'] = this.dataCollection;
    } else {
      json[r'data-collection'] = null;
    }
    if (this.dataTabulation != null) {
      json[r'data-tabulation'] = this.dataTabulation;
    } else {
      json[r'data-tabulation'] = null;
    }
    if (this.measure != null) {
      json[r'measure'] = this.measure;
    } else {
      json[r'measure'] = null;
    }
    if (this.terminology != null) {
      json[r'terminology'] = this.terminology;
    } else {
      json[r'terminology'] = null;
    }
    return json;
  }

  /// Returns a new [Lastupdated] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Lastupdated? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Lastupdated[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Lastupdated[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Lastupdated(
        links: LastupdatedLinks.fromJson(json[r'_links']),
        overall: mapValueOfType<String>(json, r'overall'),
        dataAnalysis: mapValueOfType<String>(json, r'data-analysis'),
        dataCollection: mapValueOfType<String>(json, r'data-collection'),
        dataTabulation: mapValueOfType<String>(json, r'data-tabulation'),
        measure: mapValueOfType<String>(json, r'measure'),
        terminology: mapValueOfType<String>(json, r'terminology'),
      );
    }
    return null;
  }

  static List<Lastupdated> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Lastupdated>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Lastupdated.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Lastupdated> mapFromJson(dynamic json) {
    final map = <String, Lastupdated>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Lastupdated.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Lastupdated-objects as value to a dart map
  static Map<String, List<Lastupdated>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Lastupdated>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Lastupdated.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

