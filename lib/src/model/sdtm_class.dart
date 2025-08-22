//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/sdtm_class_variable.dart';
import 'package:openapi/src/model/sdtm_dataset.dart';
import 'package:openapi/src/model/sdtm_class_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sdtm_class.g.dart';

/// SdtmClass
///
/// Properties:
/// * [ordinal] 
/// * [name] 
/// * [label] 
/// * [description] 
/// * [links] 
/// * [classVariables] 
/// * [datasets] 
@BuiltValue()
abstract class SdtmClass implements Built<SdtmClass, SdtmClassBuilder> {
  @BuiltValueField(wireName: r'ordinal')
  String? get ordinal;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'_links')
  SdtmClassLinks? get links;

  @BuiltValueField(wireName: r'classVariables')
  BuiltList<SdtmClassVariable>? get classVariables;

  @BuiltValueField(wireName: r'datasets')
  BuiltList<SdtmDataset>? get datasets;

  SdtmClass._();

  factory SdtmClass([void updates(SdtmClassBuilder b)]) = _$SdtmClass;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SdtmClassBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SdtmClass> get serializer => _$SdtmClassSerializer();
}

class _$SdtmClassSerializer implements PrimitiveSerializer<SdtmClass> {
  @override
  final Iterable<Type> types = const [SdtmClass, _$SdtmClass];

  @override
  final String wireName = r'SdtmClass';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SdtmClass object, {
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
        specifiedType: const FullType(SdtmClassLinks),
      );
    }
    if (object.classVariables != null) {
      yield r'classVariables';
      yield serializers.serialize(
        object.classVariables,
        specifiedType: const FullType(BuiltList, [FullType(SdtmClassVariable)]),
      );
    }
    if (object.datasets != null) {
      yield r'datasets';
      yield serializers.serialize(
        object.datasets,
        specifiedType: const FullType(BuiltList, [FullType(SdtmDataset)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SdtmClass object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SdtmClassBuilder result,
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
            specifiedType: const FullType(SdtmClassLinks),
          ) as SdtmClassLinks;
          result.links.replace(valueDes);
          break;
        case r'classVariables':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SdtmClassVariable)]),
          ) as BuiltList<SdtmClassVariable>;
          result.classVariables.replace(valueDes);
          break;
        case r'datasets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SdtmDataset)]),
          ) as BuiltList<SdtmDataset>;
          result.datasets.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SdtmClass deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdtmClassBuilder();
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

