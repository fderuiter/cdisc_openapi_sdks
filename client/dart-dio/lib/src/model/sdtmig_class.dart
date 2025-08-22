//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtmig_dataset.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/sdtmig_class_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sdtmig_class.g.dart';

/// SdtmigClass
///
/// Properties:
/// * [ordinal] 
/// * [name] 
/// * [label] 
/// * [description] 
/// * [links] 
/// * [datasets] 
@BuiltValue()
abstract class SdtmigClass implements Built<SdtmigClass, SdtmigClassBuilder> {
  @BuiltValueField(wireName: r'ordinal')
  String? get ordinal;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'_links')
  SdtmigClassLinks? get links;

  @BuiltValueField(wireName: r'datasets')
  BuiltList<SdtmigDataset>? get datasets;

  SdtmigClass._();

  factory SdtmigClass([void updates(SdtmigClassBuilder b)]) = _$SdtmigClass;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SdtmigClassBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SdtmigClass> get serializer => _$SdtmigClassSerializer();
}

class _$SdtmigClassSerializer implements PrimitiveSerializer<SdtmigClass> {
  @override
  final Iterable<Type> types = const [SdtmigClass, _$SdtmigClass];

  @override
  final String wireName = r'SdtmigClass';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SdtmigClass object, {
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
        specifiedType: const FullType(SdtmigClassLinks),
      );
    }
    if (object.datasets != null) {
      yield r'datasets';
      yield serializers.serialize(
        object.datasets,
        specifiedType: const FullType(BuiltList, [FullType(SdtmigDataset)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SdtmigClass object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SdtmigClassBuilder result,
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
            specifiedType: const FullType(SdtmigClassLinks),
          ) as SdtmigClassLinks;
          result.links.replace(valueDes);
          break;
        case r'datasets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SdtmigDataset)]),
          ) as BuiltList<SdtmigDataset>;
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
  SdtmigClass deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdtmigClassBuilder();
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

