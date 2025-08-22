//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_product_ref.dart';
import 'package:openapi/src/model/cdashig_class_ref.dart';
import 'package:openapi/src/model/cdash_class_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/cdashig_class_ref_subclass.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdashig_class_links.g.dart';

/// CdashigClassLinks
///
/// Properties:
/// * [self] 
/// * [modelClass] 
/// * [parentProduct] 
/// * [parentClass] 
/// * [subclasses] 
/// * [priorVersion] 
@BuiltValue()
abstract class CdashigClassLinks implements Built<CdashigClassLinks, CdashigClassLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashigClassRef? get self;

  @BuiltValueField(wireName: r'modelClass')
  CdashClassRef? get modelClass;

  @BuiltValueField(wireName: r'parentProduct')
  CdashigProductRef? get parentProduct;

  @BuiltValueField(wireName: r'parentClass')
  CdashigClassRef? get parentClass;

  @BuiltValueField(wireName: r'subclasses')
  BuiltList<CdashigClassRefSubclass>? get subclasses;

  @BuiltValueField(wireName: r'priorVersion')
  CdashigClassRef? get priorVersion;

  CdashigClassLinks._();

  factory CdashigClassLinks([void updates(CdashigClassLinksBuilder b)]) = _$CdashigClassLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashigClassLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashigClassLinks> get serializer => _$CdashigClassLinksSerializer();
}

class _$CdashigClassLinksSerializer implements PrimitiveSerializer<CdashigClassLinks> {
  @override
  final Iterable<Type> types = const [CdashigClassLinks, _$CdashigClassLinks];

  @override
  final String wireName = r'CdashigClassLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashigClassLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashigClassRef),
      );
    }
    if (object.modelClass != null) {
      yield r'modelClass';
      yield serializers.serialize(
        object.modelClass,
        specifiedType: const FullType(CdashClassRef),
      );
    }
    if (object.parentProduct != null) {
      yield r'parentProduct';
      yield serializers.serialize(
        object.parentProduct,
        specifiedType: const FullType(CdashigProductRef),
      );
    }
    if (object.parentClass != null) {
      yield r'parentClass';
      yield serializers.serialize(
        object.parentClass,
        specifiedType: const FullType(CdashigClassRef),
      );
    }
    if (object.subclasses != null) {
      yield r'subclasses';
      yield serializers.serialize(
        object.subclasses,
        specifiedType: const FullType(BuiltList, [FullType(CdashigClassRefSubclass)]),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(CdashigClassRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashigClassLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashigClassLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigClassRef),
          ) as CdashigClassRef;
          result.self.replace(valueDes);
          break;
        case r'modelClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashClassRef),
          ) as CdashClassRef;
          result.modelClass.replace(valueDes);
          break;
        case r'parentProduct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigProductRef),
          ) as CdashigProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'parentClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigClassRef),
          ) as CdashigClassRef;
          result.parentClass.replace(valueDes);
          break;
        case r'subclasses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CdashigClassRefSubclass)]),
          ) as BuiltList<CdashigClassRefSubclass>;
          result.subclasses.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigClassRef),
          ) as CdashigClassRef;
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
  CdashigClassLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashigClassLinksBuilder();
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

