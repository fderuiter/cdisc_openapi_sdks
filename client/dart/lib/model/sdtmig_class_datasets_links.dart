//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SdtmigClassDatasetsLinks {
  /// Returns a new [SdtmigClassDatasetsLinks] instance.
  SdtmigClassDatasetsLinks({
    this.self,
    this.parentProduct,
    this.priorVersion,
    this.datasets = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SdtmigClassDatasetsRef? self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SdtmigProductRef? parentProduct;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SdtmigClassDatasetsRef? priorVersion;

  List<SdtmigDatasetRefElement> datasets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SdtmigClassDatasetsLinks &&
    other.self == self &&
    other.parentProduct == parentProduct &&
    other.priorVersion == priorVersion &&
    _deepEquality.equals(other.datasets, datasets);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (parentProduct == null ? 0 : parentProduct!.hashCode) +
    (priorVersion == null ? 0 : priorVersion!.hashCode) +
    (datasets.hashCode);

  @override
  String toString() => 'SdtmigClassDatasetsLinks[self=$self, parentProduct=$parentProduct, priorVersion=$priorVersion, datasets=$datasets]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.self != null) {
      json[r'self'] = this.self;
    } else {
      json[r'self'] = null;
    }
    if (this.parentProduct != null) {
      json[r'parentProduct'] = this.parentProduct;
    } else {
      json[r'parentProduct'] = null;
    }
    if (this.priorVersion != null) {
      json[r'priorVersion'] = this.priorVersion;
    } else {
      json[r'priorVersion'] = null;
    }
      json[r'datasets'] = this.datasets;
    return json;
  }

  /// Returns a new [SdtmigClassDatasetsLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SdtmigClassDatasetsLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SdtmigClassDatasetsLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SdtmigClassDatasetsLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SdtmigClassDatasetsLinks(
        self: SdtmigClassDatasetsRef.fromJson(json[r'self']),
        parentProduct: SdtmigProductRef.fromJson(json[r'parentProduct']),
        priorVersion: SdtmigClassDatasetsRef.fromJson(json[r'priorVersion']),
        datasets: SdtmigDatasetRefElement.listFromJson(json[r'datasets']),
      );
    }
    return null;
  }

  static List<SdtmigClassDatasetsLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SdtmigClassDatasetsLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SdtmigClassDatasetsLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SdtmigClassDatasetsLinks> mapFromJson(dynamic json) {
    final map = <String, SdtmigClassDatasetsLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SdtmigClassDatasetsLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SdtmigClassDatasetsLinks-objects as value to a dart map
  static Map<String, List<SdtmigClassDatasetsLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SdtmigClassDatasetsLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SdtmigClassDatasetsLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

