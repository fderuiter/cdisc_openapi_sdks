//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProductsLinks {
  /// Returns a new [ProductsLinks] instance.
  ProductsLinks({
    this.self,
    this.dataCollection,
    this.dataTabulation,
    this.dataAnalysis,
    this.terminology,
    this.measure,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProductsRef? self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProductgroupDataCollection? dataCollection;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProductgroupDataTabulation? dataTabulation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProductgroupDataAnalysis? dataAnalysis;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProductgroupTerminology? terminology;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProductgroupQrs? measure;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProductsLinks &&
    other.self == self &&
    other.dataCollection == dataCollection &&
    other.dataTabulation == dataTabulation &&
    other.dataAnalysis == dataAnalysis &&
    other.terminology == terminology &&
    other.measure == measure;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (dataCollection == null ? 0 : dataCollection!.hashCode) +
    (dataTabulation == null ? 0 : dataTabulation!.hashCode) +
    (dataAnalysis == null ? 0 : dataAnalysis!.hashCode) +
    (terminology == null ? 0 : terminology!.hashCode) +
    (measure == null ? 0 : measure!.hashCode);

  @override
  String toString() => 'ProductsLinks[self=$self, dataCollection=$dataCollection, dataTabulation=$dataTabulation, dataAnalysis=$dataAnalysis, terminology=$terminology, measure=$measure]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.self != null) {
      json[r'self'] = this.self;
    } else {
      json[r'self'] = null;
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
    if (this.dataAnalysis != null) {
      json[r'data-analysis'] = this.dataAnalysis;
    } else {
      json[r'data-analysis'] = null;
    }
    if (this.terminology != null) {
      json[r'terminology'] = this.terminology;
    } else {
      json[r'terminology'] = null;
    }
    if (this.measure != null) {
      json[r'measure'] = this.measure;
    } else {
      json[r'measure'] = null;
    }
    return json;
  }

  /// Returns a new [ProductsLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProductsLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProductsLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProductsLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProductsLinks(
        self: ProductsRef.fromJson(json[r'self']),
        dataCollection: ProductgroupDataCollection.fromJson(json[r'data-collection']),
        dataTabulation: ProductgroupDataTabulation.fromJson(json[r'data-tabulation']),
        dataAnalysis: ProductgroupDataAnalysis.fromJson(json[r'data-analysis']),
        terminology: ProductgroupTerminology.fromJson(json[r'terminology']),
        measure: ProductgroupQrs.fromJson(json[r'measure']),
      );
    }
    return null;
  }

  static List<ProductsLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductsLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductsLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProductsLinks> mapFromJson(dynamic json) {
    final map = <String, ProductsLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProductsLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProductsLinks-objects as value to a dart map
  static Map<String, List<ProductsLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProductsLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProductsLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

