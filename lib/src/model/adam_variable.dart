//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/adam_variable_links.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'adam_variable.g.dart';

/// AdamVariable
///
/// Properties:
/// * [ordinal] 
/// * [name] 
/// * [label] 
/// * [description] 
/// * [core] 
/// * [simpleDatatype] 
/// * [describedValueDomain] 
/// * [valueList] 
/// * [links] 
@BuiltValue()
abstract class AdamVariable implements Built<AdamVariable, AdamVariableBuilder> {
  @BuiltValueField(wireName: r'ordinal')
  String? get ordinal;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'core')
  String? get core;

  @BuiltValueField(wireName: r'simpleDatatype')
  String? get simpleDatatype;

  @BuiltValueField(wireName: r'describedValueDomain')
  String? get describedValueDomain;

  @BuiltValueField(wireName: r'valueList')
  BuiltList<String>? get valueList;

  @BuiltValueField(wireName: r'_links')
  AdamVariableLinks? get links;

  AdamVariable._();

  factory AdamVariable([void updates(AdamVariableBuilder b)]) = _$AdamVariable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdamVariableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdamVariable> get serializer => _$AdamVariableSerializer();
}

class _$AdamVariableSerializer implements PrimitiveSerializer<AdamVariable> {
  @override
  final Iterable<Type> types = const [AdamVariable, _$AdamVariable];

  @override
  final String wireName = r'AdamVariable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdamVariable object, {
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
    if (object.core != null) {
      yield r'core';
      yield serializers.serialize(
        object.core,
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
        specifiedType: const FullType(AdamVariableLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdamVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdamVariableBuilder result,
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
        case r'core':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.core = valueDes;
          break;
        case r'simpleDatatype':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.simpleDatatype = valueDes;
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
            specifiedType: const FullType(AdamVariableLinks),
          ) as AdamVariableLinks;
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
  AdamVariable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdamVariableBuilder();
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

