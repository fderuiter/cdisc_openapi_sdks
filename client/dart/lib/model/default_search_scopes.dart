//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DefaultSearchScopes {
  /// Instantiate a new enum with the provided [value].
  const DefaultSearchScopes._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const class_ = DefaultSearchScopes._(r'class');
  static const codelist = DefaultSearchScopes._(r'codelist');
  static const conceptId = DefaultSearchScopes._(r'conceptId');
  static const core = DefaultSearchScopes._(r'core');
  static const dataStructure = DefaultSearchScopes._(r'dataStructure');
  static const datasetStructure = DefaultSearchScopes._(r'datasetStructure');
  static const definition = DefaultSearchScopes._(r'definition');
  static const description = DefaultSearchScopes._(r'description');
  static const domain = DefaultSearchScopes._(r'domain');
  static const effectiveDate = DefaultSearchScopes._(r'effectiveDate');
  static const extensible = DefaultSearchScopes._(r'extensible');
  static const href = DefaultSearchScopes._(r'href');
  static const label = DefaultSearchScopes._(r'label');
  static const measureType = DefaultSearchScopes._(r'measureType');
  static const name = DefaultSearchScopes._(r'name');
  static const preferredTerm = DefaultSearchScopes._(r'preferredTerm');
  static const product = DefaultSearchScopes._(r'product');
  static const productGroup = DefaultSearchScopes._(r'productGroup');
  static const registrationStatus = DefaultSearchScopes._(r'registrationStatus');
  static const roleDescription = DefaultSearchScopes._(r'roleDescription');
  static const sdtmTarget = DefaultSearchScopes._(r'sdtmTarget');
  static const simpleDatatype = DefaultSearchScopes._(r'simpleDatatype');
  static const submissionValue = DefaultSearchScopes._(r'submissionValue');
  static const synonyms = DefaultSearchScopes._(r'synonyms');
  static const type = DefaultSearchScopes._(r'type');
  static const uiHref = DefaultSearchScopes._(r'uiHref');
  static const valueDomain = DefaultSearchScopes._(r'valueDomain');
  static const variableSet = DefaultSearchScopes._(r'variableSet');
  static const version = DefaultSearchScopes._(r'version');

  /// List of all possible values in this [enum][DefaultSearchScopes].
  static const values = <DefaultSearchScopes>[
    class_,
    codelist,
    conceptId,
    core,
    dataStructure,
    datasetStructure,
    definition,
    description,
    domain,
    effectiveDate,
    extensible,
    href,
    label,
    measureType,
    name,
    preferredTerm,
    product,
    productGroup,
    registrationStatus,
    roleDescription,
    sdtmTarget,
    simpleDatatype,
    submissionValue,
    synonyms,
    type,
    uiHref,
    valueDomain,
    variableSet,
    version,
  ];

  static DefaultSearchScopes? fromJson(dynamic value) => DefaultSearchScopesTypeTransformer().decode(value);

  static List<DefaultSearchScopes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DefaultSearchScopes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DefaultSearchScopes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DefaultSearchScopes] to String,
/// and [decode] dynamic data back to [DefaultSearchScopes].
class DefaultSearchScopesTypeTransformer {
  factory DefaultSearchScopesTypeTransformer() => _instance ??= const DefaultSearchScopesTypeTransformer._();

  const DefaultSearchScopesTypeTransformer._();

  String encode(DefaultSearchScopes data) => data.value;

  /// Decodes a [dynamic value][data] to a DefaultSearchScopes.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DefaultSearchScopes? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'class': return DefaultSearchScopes.class_;
        case r'codelist': return DefaultSearchScopes.codelist;
        case r'conceptId': return DefaultSearchScopes.conceptId;
        case r'core': return DefaultSearchScopes.core;
        case r'dataStructure': return DefaultSearchScopes.dataStructure;
        case r'datasetStructure': return DefaultSearchScopes.datasetStructure;
        case r'definition': return DefaultSearchScopes.definition;
        case r'description': return DefaultSearchScopes.description;
        case r'domain': return DefaultSearchScopes.domain;
        case r'effectiveDate': return DefaultSearchScopes.effectiveDate;
        case r'extensible': return DefaultSearchScopes.extensible;
        case r'href': return DefaultSearchScopes.href;
        case r'label': return DefaultSearchScopes.label;
        case r'measureType': return DefaultSearchScopes.measureType;
        case r'name': return DefaultSearchScopes.name;
        case r'preferredTerm': return DefaultSearchScopes.preferredTerm;
        case r'product': return DefaultSearchScopes.product;
        case r'productGroup': return DefaultSearchScopes.productGroup;
        case r'registrationStatus': return DefaultSearchScopes.registrationStatus;
        case r'roleDescription': return DefaultSearchScopes.roleDescription;
        case r'sdtmTarget': return DefaultSearchScopes.sdtmTarget;
        case r'simpleDatatype': return DefaultSearchScopes.simpleDatatype;
        case r'submissionValue': return DefaultSearchScopes.submissionValue;
        case r'synonyms': return DefaultSearchScopes.synonyms;
        case r'type': return DefaultSearchScopes.type;
        case r'uiHref': return DefaultSearchScopes.uiHref;
        case r'valueDomain': return DefaultSearchScopes.valueDomain;
        case r'variableSet': return DefaultSearchScopes.variableSet;
        case r'version': return DefaultSearchScopes.version;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DefaultSearchScopesTypeTransformer] instance.
  static DefaultSearchScopesTypeTransformer? _instance;
}

