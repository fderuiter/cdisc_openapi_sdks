//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Health {
  /// Returns a new [Health] instance.
  Health({
    this.healthy,
    this.ldapAuthenticationHealthy,
    this.ldapAuthorizationHealthy,
    this.databaseHealthy,
    this.esHealthy,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? healthy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ldapAuthenticationHealthy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ldapAuthorizationHealthy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? databaseHealthy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? esHealthy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Health &&
    other.healthy == healthy &&
    other.ldapAuthenticationHealthy == ldapAuthenticationHealthy &&
    other.ldapAuthorizationHealthy == ldapAuthorizationHealthy &&
    other.databaseHealthy == databaseHealthy &&
    other.esHealthy == esHealthy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (healthy == null ? 0 : healthy!.hashCode) +
    (ldapAuthenticationHealthy == null ? 0 : ldapAuthenticationHealthy!.hashCode) +
    (ldapAuthorizationHealthy == null ? 0 : ldapAuthorizationHealthy!.hashCode) +
    (databaseHealthy == null ? 0 : databaseHealthy!.hashCode) +
    (esHealthy == null ? 0 : esHealthy!.hashCode);

  @override
  String toString() => 'Health[healthy=$healthy, ldapAuthenticationHealthy=$ldapAuthenticationHealthy, ldapAuthorizationHealthy=$ldapAuthorizationHealthy, databaseHealthy=$databaseHealthy, esHealthy=$esHealthy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.healthy != null) {
      json[r'healthy'] = this.healthy;
    } else {
      json[r'healthy'] = null;
    }
    if (this.ldapAuthenticationHealthy != null) {
      json[r'ldapAuthenticationHealthy'] = this.ldapAuthenticationHealthy;
    } else {
      json[r'ldapAuthenticationHealthy'] = null;
    }
    if (this.ldapAuthorizationHealthy != null) {
      json[r'ldapAuthorizationHealthy'] = this.ldapAuthorizationHealthy;
    } else {
      json[r'ldapAuthorizationHealthy'] = null;
    }
    if (this.databaseHealthy != null) {
      json[r'databaseHealthy'] = this.databaseHealthy;
    } else {
      json[r'databaseHealthy'] = null;
    }
    if (this.esHealthy != null) {
      json[r'esHealthy'] = this.esHealthy;
    } else {
      json[r'esHealthy'] = null;
    }
    return json;
  }

  /// Returns a new [Health] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Health? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Health[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Health[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Health(
        healthy: mapValueOfType<bool>(json, r'healthy'),
        ldapAuthenticationHealthy: mapValueOfType<bool>(json, r'ldapAuthenticationHealthy'),
        ldapAuthorizationHealthy: mapValueOfType<bool>(json, r'ldapAuthorizationHealthy'),
        databaseHealthy: mapValueOfType<bool>(json, r'databaseHealthy'),
        esHealthy: mapValueOfType<bool>(json, r'esHealthy'),
      );
    }
    return null;
  }

  static List<Health> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Health>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Health.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Health> mapFromJson(dynamic json) {
    final map = <String, Health>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Health.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Health-objects as value to a dart map
  static Map<String, List<Health>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Health>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Health.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

