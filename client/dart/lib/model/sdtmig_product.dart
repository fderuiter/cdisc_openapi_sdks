//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SdtmigProduct {
  /// Returns a new [SdtmigProduct] instance.
  SdtmigProduct({
    this.name,
    this.label,
    this.description,
    this.source_,
    this.effectiveDate,
    this.registrationStatus,
    this.version,
    this.links,
    this.classes = const [],
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
  String? source_;

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
  SdtmigProductLinks? links;

  List<SdtmigClass> classes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SdtmigProduct &&
    other.name == name &&
    other.label == label &&
    other.description == description &&
    other.source_ == source_ &&
    other.effectiveDate == effectiveDate &&
    other.registrationStatus == registrationStatus &&
    other.version == version &&
    other.links == links &&
    _deepEquality.equals(other.classes, classes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (effectiveDate == null ? 0 : effectiveDate!.hashCode) +
    (registrationStatus == null ? 0 : registrationStatus!.hashCode) +
    (version == null ? 0 : version!.hashCode) +
    (links == null ? 0 : links!.hashCode) +
    (classes.hashCode);

  @override
  String toString() => 'SdtmigProduct[name=$name, label=$label, description=$description, source_=$source_, effectiveDate=$effectiveDate, registrationStatus=$registrationStatus, version=$version, links=$links, classes=$classes]';

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
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.effectiveDate != null) {
      json[r'effectiveDate'] = this.effectiveDate;
    } else {
      json[r'effectiveDate'] = null;
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
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
      json[r'classes'] = this.classes;
    return json;
  }

  /// Returns a new [SdtmigProduct] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SdtmigProduct? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SdtmigProduct[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SdtmigProduct[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SdtmigProduct(
        name: mapValueOfType<String>(json, r'name'),
        label: mapValueOfType<String>(json, r'label'),
        description: mapValueOfType<String>(json, r'description'),
        source_: mapValueOfType<String>(json, r'source'),
        effectiveDate: mapValueOfType<String>(json, r'effectiveDate'),
        registrationStatus: mapValueOfType<String>(json, r'registrationStatus'),
        version: mapValueOfType<String>(json, r'version'),
        links: SdtmigProductLinks.fromJson(json[r'_links']),
        classes: SdtmigClass.listFromJson(json[r'classes']),
      );
    }
    return null;
  }

  static List<SdtmigProduct> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SdtmigProduct>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SdtmigProduct.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SdtmigProduct> mapFromJson(dynamic json) {
    final map = <String, SdtmigProduct>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SdtmigProduct.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SdtmigProduct-objects as value to a dart map
  static Map<String, List<SdtmigProduct>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SdtmigProduct>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SdtmigProduct.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

