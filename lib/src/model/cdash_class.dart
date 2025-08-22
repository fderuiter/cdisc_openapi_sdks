//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdash_class_field.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/cdash_class_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdash_class.g.dart';

/// CdashClass
///
/// Properties:
/// * [ordinal] 
/// * [name] 
/// * [label] 
/// * [description] 
/// * [links] 
/// * [cdashModelFields] 
@BuiltValue()
abstract class CdashClass implements Built<CdashClass, CdashClassBuilder> {
  @BuiltValueField(wireName: r'ordinal')
  String? get ordinal;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'_links')
  CdashClassLinks? get links;

  @BuiltValueField(wireName: r'cdashModelFields')
  BuiltList<CdashClassField>? get cdashModelFields;

  CdashClass._();

  factory CdashClass([void updates(CdashClassBuilder b)]) = _$CdashClass;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashClassBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashClass> get serializer => _$CdashClassSerializer();
}

class _$CdashClassSerializer implements PrimitiveSerializer<CdashClass> {
  @override
  final Iterable<Type> types = const [CdashClass, _$CdashClass];

  @override
  final String wireName = r'CdashClass';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashClass object, {
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
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(CdashClassLinks),
      );
    }
    if (object.cdashModelFields != null) {
      yield r'cdashModelFields';
      yield serializers.serialize(
        object.cdashModelFields,
        specifiedType: const FullType(BuiltList, [FullType(CdashClassField)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashClass object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashClassBuilder result,
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
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashClassLinks),
          ) as CdashClassLinks;
          result.links.replace(valueDes);
          break;
        case r'cdashModelFields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CdashClassField)]),
          ) as BuiltList<CdashClassField>;
          result.cdashModelFields.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CdashClass deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashClassBuilder();
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

