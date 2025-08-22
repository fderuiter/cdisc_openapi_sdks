//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SendigDatasetsLinks {
  /// Returns a new [SendigDatasetsLinks] instance.
  SendigDatasetsLinks({
    this.self,
    this.parentProduct,
    this.datasets = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SendigDatasetsRef? self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SendigProductRef? parentProduct;

  List<SendigDatasetRefElement> datasets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendigDatasetsLinks &&
    other.self == self &&
    other.parentProduct == parentProduct &&
    _deepEquality.equals(other.datasets, datasets);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (parentProduct == null ? 0 : parentProduct!.hashCode) +
    (datasets.hashCode);

  @override
  String toString() => 'SendigDatasetsLinks[self=$self, parentProduct=$parentProduct, datasets=$datasets]';

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
      json[r'datasets'] = this.datasets;
    return json;
  }

  /// Returns a new [SendigDatasetsLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendigDatasetsLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendigDatasetsLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendigDatasetsLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendigDatasetsLinks(
        self: SendigDatasetsRef.fromJson(json[r'self']),
        parentProduct: SendigProductRef.fromJson(json[r'parentProduct']),
        datasets: SendigDatasetRefElement.listFromJson(json[r'datasets']),
      );
    }
    return null;
  }

  static List<SendigDatasetsLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendigDatasetsLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendigDatasetsLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendigDatasetsLinks> mapFromJson(dynamic json) {
    final map = <String, SendigDatasetsLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendigDatasetsLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendigDatasetsLinks-objects as value to a dart map
  static Map<String, List<SendigDatasetsLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendigDatasetsLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendigDatasetsLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

