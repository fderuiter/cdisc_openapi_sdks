//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProductgroupDataCollectionLinks {
  /// Returns a new [ProductgroupDataCollectionLinks] instance.
  ProductgroupDataCollectionLinks({
    this.self,
    this.cdash = const [],
    this.cdashig = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProductgroupRef? self;

  List<CdashProductRefElement> cdash;

  List<CdashigProductRefElement> cdashig;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProductgroupDataCollectionLinks &&
    other.self == self &&
    _deepEquality.equals(other.cdash, cdash) &&
    _deepEquality.equals(other.cdashig, cdashig);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (cdash.hashCode) +
    (cdashig.hashCode);

  @override
  String toString() => 'ProductgroupDataCollectionLinks[self=$self, cdash=$cdash, cdashig=$cdashig]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.self != null) {
      json[r'self'] = this.self;
    } else {
      json[r'self'] = null;
    }
      json[r'cdash'] = this.cdash;
      json[r'cdashig'] = this.cdashig;
    return json;
  }

  /// Returns a new [ProductgroupDataCollectionLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProductgroupDataCollectionLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProductgroupDataCollectionLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProductgroupDataCollectionLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProductgroupDataCollectionLinks(
        self: ProductgroupRef.fromJson(json[r'self']),
        cdash: CdashProductRefElement.listFromJson(json[r'cdash']),
        cdashig: CdashigProductRefElement.listFromJson(json[r'cdashig']),
      );
    }
    return null;
  }

  static List<ProductgroupDataCollectionLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductgroupDataCollectionLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductgroupDataCollectionLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProductgroupDataCollectionLinks> mapFromJson(dynamic json) {
    final map = <String, ProductgroupDataCollectionLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProductgroupDataCollectionLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProductgroupDataCollectionLinks-objects as value to a dart map
  static Map<String, List<ProductgroupDataCollectionLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProductgroupDataCollectionLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProductgroupDataCollectionLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

