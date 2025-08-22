//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MaintenanceBody {
  /// Returns a new [MaintenanceBody] instance.
  MaintenanceBody({
    this.maintenanceMode,
    this.maintenanceMessage,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? maintenanceMode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? maintenanceMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MaintenanceBody &&
    other.maintenanceMode == maintenanceMode &&
    other.maintenanceMessage == maintenanceMessage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (maintenanceMode == null ? 0 : maintenanceMode!.hashCode) +
    (maintenanceMessage == null ? 0 : maintenanceMessage!.hashCode);

  @override
  String toString() => 'MaintenanceBody[maintenanceMode=$maintenanceMode, maintenanceMessage=$maintenanceMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.maintenanceMode != null) {
      json[r'maintenanceMode'] = this.maintenanceMode;
    } else {
      json[r'maintenanceMode'] = null;
    }
    if (this.maintenanceMessage != null) {
      json[r'maintenanceMessage'] = this.maintenanceMessage;
    } else {
      json[r'maintenanceMessage'] = null;
    }
    return json;
  }

  /// Returns a new [MaintenanceBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MaintenanceBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MaintenanceBody[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MaintenanceBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MaintenanceBody(
        maintenanceMode: mapValueOfType<bool>(json, r'maintenanceMode'),
        maintenanceMessage: mapValueOfType<String>(json, r'maintenanceMessage'),
      );
    }
    return null;
  }

  static List<MaintenanceBody> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MaintenanceBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MaintenanceBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MaintenanceBody> mapFromJson(dynamic json) {
    final map = <String, MaintenanceBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MaintenanceBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MaintenanceBody-objects as value to a dart map
  static Map<String, List<MaintenanceBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MaintenanceBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MaintenanceBody.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

