//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExportQrsGeneral {
  /// Returns a new [ExportQrsGeneral] instance.
  ExportQrsGeneral({
    this.name,
    this.label,
    this.effectiveDate,
    this.description,
    this.type,
    this.categoryQuoteSCodelistCCode,
    this.categoryQuoteSTermCCode,
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
  String? effectiveDate;

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
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? categoryQuoteSCodelistCCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? categoryQuoteSTermCCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExportQrsGeneral &&
    other.name == name &&
    other.label == label &&
    other.effectiveDate == effectiveDate &&
    other.description == description &&
    other.type == type &&
    other.categoryQuoteSCodelistCCode == categoryQuoteSCodelistCCode &&
    other.categoryQuoteSTermCCode == categoryQuoteSTermCCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (effectiveDate == null ? 0 : effectiveDate!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (categoryQuoteSCodelistCCode == null ? 0 : categoryQuoteSCodelistCCode!.hashCode) +
    (categoryQuoteSTermCCode == null ? 0 : categoryQuoteSTermCCode!.hashCode);

  @override
  String toString() => 'ExportQrsGeneral[name=$name, label=$label, effectiveDate=$effectiveDate, description=$description, type=$type, categoryQuoteSCodelistCCode=$categoryQuoteSCodelistCCode, categoryQuoteSTermCCode=$categoryQuoteSTermCCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'Name'] = this.name;
    } else {
      json[r'Name'] = null;
    }
    if (this.label != null) {
      json[r'Label'] = this.label;
    } else {
      json[r'Label'] = null;
    }
    if (this.effectiveDate != null) {
      json[r'Effective Date'] = this.effectiveDate;
    } else {
      json[r'Effective Date'] = null;
    }
    if (this.description != null) {
      json[r'Description'] = this.description;
    } else {
      json[r'Description'] = null;
    }
    if (this.type != null) {
      json[r'Type'] = this.type;
    } else {
      json[r'Type'] = null;
    }
    if (this.categoryQuoteSCodelistCCode != null) {
      json[r'Category's Codelist C-Code'] = this.categoryQuoteSCodelistCCode;
    } else {
      json[r'Category's Codelist C-Code'] = null;
    }
    if (this.categoryQuoteSTermCCode != null) {
      json[r'Category's Term C-Code'] = this.categoryQuoteSTermCCode;
    } else {
      json[r'Category's Term C-Code'] = null;
    }
    return json;
  }

  /// Returns a new [ExportQrsGeneral] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExportQrsGeneral? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExportQrsGeneral[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExportQrsGeneral[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExportQrsGeneral(
        name: mapValueOfType<String>(json, r'Name'),
        label: mapValueOfType<String>(json, r'Label'),
        effectiveDate: mapValueOfType<String>(json, r'Effective Date'),
        description: mapValueOfType<String>(json, r'Description'),
        type: mapValueOfType<String>(json, r'Type'),
        categoryQuoteSCodelistCCode: mapValueOfType<String>(json, r'Category's Codelist C-Code'),
        categoryQuoteSTermCCode: mapValueOfType<String>(json, r'Category's Term C-Code'),
      );
    }
    return null;
  }

  static List<ExportQrsGeneral> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportQrsGeneral>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportQrsGeneral.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExportQrsGeneral> mapFromJson(dynamic json) {
    final map = <String, ExportQrsGeneral>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExportQrsGeneral.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExportQrsGeneral-objects as value to a dart map
  static Map<String, List<ExportQrsGeneral>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExportQrsGeneral>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExportQrsGeneral.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

