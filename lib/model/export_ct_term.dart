//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExportCtTerm {
  /// Returns a new [ExportCtTerm] instance.
  ExportCtTerm({
    this.bundle1,
    this.cDISCSynonymLeftParenthesisSRightParenthesis = const [],
    this.bundle2,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bundle1;

  List<String> cDISCSynonymLeftParenthesisSRightParenthesis;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bundle2;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExportCtTerm &&
    other.bundle1 == bundle1 &&
    _deepEquality.equals(other.cDISCSynonymLeftParenthesisSRightParenthesis, cDISCSynonymLeftParenthesisSRightParenthesis) &&
    other.bundle2 == bundle2;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bundle1 == null ? 0 : bundle1!.hashCode) +
    (cDISCSynonymLeftParenthesisSRightParenthesis.hashCode) +
    (bundle2 == null ? 0 : bundle2!.hashCode);

  @override
  String toString() => 'ExportCtTerm[bundle1=$bundle1, cDISCSynonymLeftParenthesisSRightParenthesis=$cDISCSynonymLeftParenthesisSRightParenthesis, bundle2=$bundle2]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.bundle1 != null) {
      json[r'bundle-1'] = this.bundle1;
    } else {
      json[r'bundle-1'] = null;
    }
      json[r'CDISC Synonym(s)'] = this.cDISCSynonymLeftParenthesisSRightParenthesis;
    if (this.bundle2 != null) {
      json[r'bundle-2'] = this.bundle2;
    } else {
      json[r'bundle-2'] = null;
    }
    return json;
  }

  /// Returns a new [ExportCtTerm] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExportCtTerm? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExportCtTerm[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExportCtTerm[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExportCtTerm(
        bundle1: mapValueOfType<String>(json, r'bundle-1'),
        cDISCSynonymLeftParenthesisSRightParenthesis: json[r'CDISC Synonym(s)'] is Iterable
            ? (json[r'CDISC Synonym(s)'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        bundle2: mapValueOfType<String>(json, r'bundle-2'),
      );
    }
    return null;
  }

  static List<ExportCtTerm> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportCtTerm>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportCtTerm.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExportCtTerm> mapFromJson(dynamic json) {
    final map = <String, ExportCtTerm>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExportCtTerm.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExportCtTerm-objects as value to a dart map
  static Map<String, List<ExportCtTerm>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExportCtTerm>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExportCtTerm.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

