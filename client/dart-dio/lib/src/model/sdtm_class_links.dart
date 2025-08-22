//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtm_class_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/sdtm_class_ref_subclass.dart';
import 'package:openapi/src/model/sdtm_product_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sdtm_class_links.g.dart';

/// SdtmClassLinks
///
/// Properties:
/// * [self] 
/// * [parentProduct] 
/// * [parentClass] 
/// * [subclasses] 
/// * [priorVersion] 
@BuiltValue()
abstract class SdtmClassLinks implements Built<SdtmClassLinks, SdtmClassLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmClassRef? get self;

  @BuiltValueField(wireName: r'parentProduct')
  SdtmProductRef? get parentProduct;

  @BuiltValueField(wireName: r'parentClass')
  SdtmClassRef? get parentClass;

  @BuiltValueField(wireName: r'subclasses')
  BuiltList<SdtmClassRefSubclass>? get subclasses;

  @BuiltValueField(wireName: r'priorVersion')
  SdtmClassRef? get priorVersion;

  SdtmClassLinks._();

  factory SdtmClassLinks([void updates(SdtmClassLinksBuilder b)]) = _$SdtmClassLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SdtmClassLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SdtmClassLinks> get serializer => _$SdtmClassLinksSerializer();
}

class _$SdtmClassLinksSerializer implements PrimitiveSerializer<SdtmClassLinks> {
  @override
  final Iterable<Type> types = const [SdtmClassLinks, _$SdtmClassLinks];

  @override
  final String wireName = r'SdtmClassLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SdtmClassLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmClassRef),
      );
    }
    if (object.parentProduct != null) {
      yield r'parentProduct';
      yield serializers.serialize(
        object.parentProduct,
        specifiedType: const FullType(SdtmProductRef),
      );
    }
    if (object.parentClass != null) {
      yield r'parentClass';
      yield serializers.serialize(
        object.parentClass,
        specifiedType: const FullType(SdtmClassRef),
      );
    }
    if (object.subclasses != null) {
      yield r'subclasses';
      yield serializers.serialize(
        object.subclasses,
        specifiedType: const FullType(BuiltList, [FullType(SdtmClassRefSubclass)]),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(SdtmClassRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SdtmClassLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SdtmClassLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmClassRef),
          ) as SdtmClassRef;
          result.self.replace(valueDes);
          break;
        case r'parentProduct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmProductRef),
          ) as SdtmProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'parentClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmClassRef),
          ) as SdtmClassRef;
          result.parentClass.replace(valueDes);
          break;
        case r'subclasses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SdtmClassRefSubclass)]),
          ) as BuiltList<SdtmClassRefSubclass>;
          result.subclasses.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmClassRef),
          ) as SdtmClassRef;
          result.priorVersion.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SdtmClassLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdtmClassLinksBuilder();
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

