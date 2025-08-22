//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtmig_dataset_variable_links.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sdtmig_dataset_variable.g.dart';

/// SdtmigDatasetVariable
///
/// Properties:
/// * [ordinal] 
/// * [name] 
/// * [label] 
/// * [description] 
/// * [role] 
/// * [simpleDatatype] 
/// * [core] 
/// * [describedValueDomain] 
/// * [valueList] 
/// * [links] 
@BuiltValue()
abstract class SdtmigDatasetVariable implements Built<SdtmigDatasetVariable, SdtmigDatasetVariableBuilder> {
  @BuiltValueField(wireName: r'ordinal')
  String? get ordinal;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'role')
  String? get role;

  @BuiltValueField(wireName: r'simpleDatatype')
  String? get simpleDatatype;

  @BuiltValueField(wireName: r'core')
  String? get core;

  @BuiltValueField(wireName: r'describedValueDomain')
  String? get describedValueDomain;

  @BuiltValueField(wireName: r'valueList')
  BuiltList<String>? get valueList;

  @BuiltValueField(wireName: r'_links')
  SdtmigDatasetVariableLinks? get links;

  SdtmigDatasetVariable._();

  factory SdtmigDatasetVariable([void updates(SdtmigDatasetVariableBuilder b)]) = _$SdtmigDatasetVariable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SdtmigDatasetVariableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SdtmigDatasetVariable> get serializer => _$SdtmigDatasetVariableSerializer();
}

class _$SdtmigDatasetVariableSerializer implements PrimitiveSerializer<SdtmigDatasetVariable> {
  @override
  final Iterable<Type> types = const [SdtmigDatasetVariable, _$SdtmigDatasetVariable];

  @override
  final String wireName = r'SdtmigDatasetVariable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SdtmigDatasetVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ordinal != null) {
      yield r'ordinal';
      yield serializers.serialize(
        object.ordinal,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(String),
      );
    }
    if (object.simpleDatatype != null) {
      yield r'simpleDatatype';
      yield serializers.serialize(
        object.simpleDatatype,
        specifiedType: const FullType(String),
      );
    }
    if (object.core != null) {
      yield r'core';
      yield serializers.serialize(
        object.core,
        specifiedType: const FullType(String),
      );
    }
    if (object.describedValueDomain != null) {
      yield r'describedValueDomain';
      yield serializers.serialize(
        object.describedValueDomain,
        specifiedType: const FullType(String),
      );
    }
    if (object.valueList != null) {
      yield r'valueList';
      yield serializers.serialize(
        object.valueList,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(SdtmigDatasetVariableLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SdtmigDatasetVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SdtmigDatasetVariableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ordinal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ordinal = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.role = valueDes;
          break;
        case r'simpleDatatype':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.simpleDatatype = valueDes;
          break;
        case r'core':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.core = valueDes;
          break;
        case r'describedValueDomain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.describedValueDomain = valueDes;
          break;
        case r'valueList':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.valueList.replace(valueDes);
          break;
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigDatasetVariableLinks),
          ) as SdtmigDatasetVariableLinks;
          result.links.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SdtmigDatasetVariable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdtmigDatasetVariableBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

