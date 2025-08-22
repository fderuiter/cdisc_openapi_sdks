//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DefaultErrorResponse {
  /// Returns a new [DefaultErrorResponse] instance.
  DefaultErrorResponse({
    this.statusCode,
    this.reasonPhrase,
    this.userMessage,
    this.adminMessage,
  });

  /// HTTP Status Code
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? statusCode;

  /// HTTP Reason Phrase
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reasonPhrase;

  /// User Error Message
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userMessage;

  /// Admin Error Message
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? adminMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DefaultErrorResponse &&
    other.statusCode == statusCode &&
    other.reasonPhrase == reasonPhrase &&
    other.userMessage == userMessage &&
    other.adminMessage == adminMessage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (statusCode == null ? 0 : statusCode!.hashCode) +
    (reasonPhrase == null ? 0 : reasonPhrase!.hashCode) +
    (userMessage == null ? 0 : userMessage!.hashCode) +
    (adminMessage == null ? 0 : adminMessage!.hashCode);

  @override
  String toString() => 'DefaultErrorResponse[statusCode=$statusCode, reasonPhrase=$reasonPhrase, userMessage=$userMessage, adminMessage=$adminMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.statusCode != null) {
      json[r'statusCode'] = this.statusCode;
    } else {
      json[r'statusCode'] = null;
    }
    if (this.reasonPhrase != null) {
      json[r'reasonPhrase'] = this.reasonPhrase;
    } else {
      json[r'reasonPhrase'] = null;
    }
    if (this.userMessage != null) {
      json[r'userMessage'] = this.userMessage;
    } else {
      json[r'userMessage'] = null;
    }
    if (this.adminMessage != null) {
      json[r'adminMessage'] = this.adminMessage;
    } else {
      json[r'adminMessage'] = null;
    }
    return json;
  }

  /// Returns a new [DefaultErrorResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DefaultErrorResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DefaultErrorResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DefaultErrorResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DefaultErrorResponse(
        statusCode: mapValueOfType<String>(json, r'statusCode'),
        reasonPhrase: mapValueOfType<String>(json, r'reasonPhrase'),
        userMessage: mapValueOfType<String>(json, r'userMessage'),
        adminMessage: mapValueOfType<String>(json, r'adminMessage'),
      );
    }
    return null;
  }

  static List<DefaultErrorResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DefaultErrorResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DefaultErrorResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DefaultErrorResponse> mapFromJson(dynamic json) {
    final map = <String, DefaultErrorResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DefaultErrorResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DefaultErrorResponse-objects as value to a dart map
  static Map<String, List<DefaultErrorResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DefaultErrorResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DefaultErrorResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

