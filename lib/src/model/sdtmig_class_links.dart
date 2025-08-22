//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtmig_class_ref_subclass.dart';
import 'package:openapi/src/model/sdtm_class_ref.dart';
import 'package:openapi/src/model/sdtmig_product_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/sdtmig_class_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sdtmig_class_links.g.dart';

/// SdtmigClassLinks
///
/// Properties:
/// * [self] 
/// * [modelClass] 
/// * [parentProduct] 
/// * [parentClass] 
/// * [subclasses] 
/// * [priorVersion] 
@BuiltValue()
abstract class SdtmigClassLinks implements Built<SdtmigClassLinks, SdtmigClassLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmigClassRef? get self;

  @BuiltValueField(wireName: r'modelClass')
  SdtmClassRef? get modelClass;

  @BuiltValueField(wireName: r'parentProduct')
  SdtmigProductRef? get parentProduct;

  @BuiltValueField(wireName: r'parentClass')
  SdtmigClassRef? get parentClass;

  @BuiltValueField(wireName: r'subclasses')
  BuiltList<SdtmigClassRefSubclass>? get subclasses;

  @BuiltValueField(wireName: r'priorVersion')
  SdtmigClassRef? get priorVersion;

  SdtmigClassLinks._();

  factory SdtmigClassLinks([void updates(SdtmigClassLinksBuilder b)]) = _$SdtmigClassLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SdtmigClassLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SdtmigClassLinks> get serializer => _$SdtmigClassLinksSerializer();
}

class _$SdtmigClassLinksSerializer implements PrimitiveSerializer<SdtmigClassLinks> {
  @override
  final Iterable<Type> types = const [SdtmigClassLinks, _$SdtmigClassLinks];

  @override
  final String wireName = r'SdtmigClassLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SdtmigClassLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmigClassRef),
      );
    }
    if (object.modelClass != null) {
      yield r'modelClass';
      yield serializers.serialize(
        object.modelClass,
        specifiedType: const FullType(SdtmClassRef),
      );
    }
    if (object.parentProduct != null) {
      yield r'parentProduct';
      yield serializers.serialize(
        object.parentProduct,
        specifiedType: const FullType(SdtmigProductRef),
      );
    }
    if (object.parentClass != null) {
      yield r'parentClass';
      yield serializers.serialize(
        object.parentClass,
        specifiedType: const FullType(SdtmigClassRef),
      );
    }
    if (object.subclasses != null) {
      yield r'subclasses';
      yield serializers.serialize(
        object.subclasses,
        specifiedType: const FullType(BuiltList, [FullType(SdtmigClassRefSubclass)]),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(SdtmigClassRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SdtmigClassLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SdtmigClassLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigClassRef),
          ) as SdtmigClassRef;
          result.self.replace(valueDes);
          break;
        case r'modelClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmClassRef),
          ) as SdtmClassRef;
          result.modelClass.replace(valueDes);
          break;
        case r'parentProduct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigProductRef),
          ) as SdtmigProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'parentClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigClassRef),
          ) as SdtmigClassRef;
          result.parentClass.replace(valueDes);
          break;
        case r'subclasses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SdtmigClassRefSubclass)]),
          ) as BuiltList<SdtmigClassRefSubclass>;
          result.subclasses.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigClassRef),
          ) as SdtmigClassRef;
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
  SdtmigClassLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdtmigClassLinksBuilder();
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

