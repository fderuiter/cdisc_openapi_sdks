//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SendigDatasetVariableLinks {
  /// Returns a new [SendigDatasetVariableLinks] instance.
  SendigDatasetVariableLinks({
    this.self,
    this.codelist = const [],
    this.modelClassVariable,
    this.modelDatasetVariable,
    this.parentProduct,
    this.parentDataset,
    this.rootItem,
    this.priorVersion,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SendigDatasetVariableRef? self;

  List<RootCtCodelistRefElement> codelist;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SdtmClassVariableRef? modelClassVariable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SdtmDatasetVariableRef? modelDatasetVariable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SendigProductRef? parentProduct;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SendigDatasetRef? parentDataset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RootSendigDatasetVariableRef? rootItem;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SendigDatasetVariableRef? priorVersion;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendigDatasetVariableLinks &&
    other.self == self &&
    _deepEquality.equals(other.codelist, codelist) &&
    other.modelClassVariable == modelClassVariable &&
    other.modelDatasetVariable == modelDatasetVariable &&
    other.parentProduct == parentProduct &&
    other.parentDataset == parentDataset &&
    other.rootItem == rootItem &&
    other.priorVersion == priorVersion;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (codelist.hashCode) +
    (modelClassVariable == null ? 0 : modelClassVariable!.hashCode) +
    (modelDatasetVariable == null ? 0 : modelDatasetVariable!.hashCode) +
    (parentProduct == null ? 0 : parentProduct!.hashCode) +
    (parentDataset == null ? 0 : parentDataset!.hashCode) +
    (rootItem == null ? 0 : rootItem!.hashCode) +
    (priorVersion == null ? 0 : priorVersion!.hashCode);

  @override
  String toString() => 'SendigDatasetVariableLinks[self=$self, codelist=$codelist, modelClassVariable=$modelClassVariable, modelDatasetVariable=$modelDatasetVariable, parentProduct=$parentProduct, parentDataset=$parentDataset, rootItem=$rootItem, priorVersion=$priorVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.self != null) {
      json[r'self'] = this.self;
    } else {
      json[r'self'] = null;
    }
      json[r'codelist'] = this.codelist;
    if (this.modelClassVariable != null) {
      json[r'modelClassVariable'] = this.modelClassVariable;
    } else {
      json[r'modelClassVariable'] = null;
    }
    if (this.modelDatasetVariable != null) {
      json[r'modelDatasetVariable'] = this.modelDatasetVariable;
    } else {
      json[r'modelDatasetVariable'] = null;
    }
    if (this.parentProduct != null) {
      json[r'parentProduct'] = this.parentProduct;
    } else {
      json[r'parentProduct'] = null;
    }
    if (this.parentDataset != null) {
      json[r'parentDataset'] = this.parentDataset;
    } else {
      json[r'parentDataset'] = null;
    }
    if (this.rootItem != null) {
      json[r'rootItem'] = this.rootItem;
    } else {
      json[r'rootItem'] = null;
    }
    if (this.priorVersion != null) {
      json[r'priorVersion'] = this.priorVersion;
    } else {
      json[r'priorVersion'] = null;
    }
    return json;
  }

  /// Returns a new [SendigDatasetVariableLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendigDatasetVariableLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendigDatasetVariableLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendigDatasetVariableLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendigDatasetVariableLinks(
        self: SendigDatasetVariableRef.fromJson(json[r'self']),
        codelist: RootCtCodelistRefElement.listFromJson(json[r'codelist']),
        modelClassVariable: SdtmClassVariableRef.fromJson(json[r'modelClassVariable']),
        modelDatasetVariable: SdtmDatasetVariableRef.fromJson(json[r'modelDatasetVariable']),
        parentProduct: SendigProductRef.fromJson(json[r'parentProduct']),
        parentDataset: SendigDatasetRef.fromJson(json[r'parentDataset']),
        rootItem: RootSendigDatasetVariableRef.fromJson(json[r'rootItem']),
        priorVersion: SendigDatasetVariableRef.fromJson(json[r'priorVersion']),
      );
    }
    return null;
  }

  static List<SendigDatasetVariableLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendigDatasetVariableLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendigDatasetVariableLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendigDatasetVariableLinks> mapFromJson(dynamic json) {
    final map = <String, SendigDatasetVariableLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendigDatasetVariableLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendigDatasetVariableLinks-objects as value to a dart map
  static Map<String, List<SendigDatasetVariableLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendigDatasetVariableLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendigDatasetVariableLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

