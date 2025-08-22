//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtm_class_variable_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sdtm_class_variable.g.dart';

/// SdtmClassVariable
///
/// Properties:
/// * [ordinal] 
/// * [name] 
/// * [label] 
/// * [description] 
/// * [role] 
/// * [roleDescription] 
/// * [simpleDatatype] 
/// * [describedValueDomain] 
/// * [links] 
@BuiltValue()
abstract class SdtmClassVariable implements Built<SdtmClassVariable, SdtmClassVariableBuilder> {
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

  @BuiltValueField(wireName: r'roleDescription')
  String? get roleDescription;

  @BuiltValueField(wireName: r'simpleDatatype')
  String? get simpleDatatype;

  @BuiltValueField(wireName: r'describedValueDomain')
  String? get describedValueDomain;

  @BuiltValueField(wireName: r'_links')
  SdtmClassVariableLinks? get links;

  SdtmClassVariable._();

  factory SdtmClassVariable([void updates(SdtmClassVariableBuilder b)]) = _$SdtmClassVariable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SdtmClassVariableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SdtmClassVariable> get serializer => _$SdtmClassVariableSerializer();
}

class _$SdtmClassVariableSerializer implements PrimitiveSerializer<SdtmClassVariable> {
  @override
  final Iterable<Type> types = const [SdtmClassVariable, _$SdtmClassVariable];

  @override
  final String wireName = r'SdtmClassVariable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SdtmClassVariable object, {
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
    if (object.roleDescription != null) {
      yield r'roleDescription';
      yield serializers.serialize(
        object.roleDescription,
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
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(SdtmClassVariableLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SdtmClassVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SdtmClassVariableBuilder result,
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
        case r'roleDescription':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.roleDescription = valueDes;
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
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmClassVariableLinks),
          ) as SdtmClassVariableLinks;
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
  SdtmClassVariable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdtmClassVariableBuilder();
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

