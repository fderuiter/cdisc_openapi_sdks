//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdash_class_ref.dart';
import 'package:openapi/src/model/cdash_product_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdash_class_links.g.dart';

/// CdashClassLinks
///
/// Properties:
/// * [self] 
/// * [parentProduct] 
/// * [priorVersion] 
@BuiltValue()
abstract class CdashClassLinks implements Built<CdashClassLinks, CdashClassLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashClassRef? get self;

  @BuiltValueField(wireName: r'parentProduct')
  CdashProductRef? get parentProduct;

  @BuiltValueField(wireName: r'priorVersion')
  CdashClassRef? get priorVersion;

  CdashClassLinks._();

  factory CdashClassLinks([void updates(CdashClassLinksBuilder b)]) = _$CdashClassLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashClassLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashClassLinks> get serializer => _$CdashClassLinksSerializer();
}

class _$CdashClassLinksSerializer implements PrimitiveSerializer<CdashClassLinks> {
  @override
  final Iterable<Type> types = const [CdashClassLinks, _$CdashClassLinks];

  @override
  final String wireName = r'CdashClassLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashClassLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashClassRef),
      );
    }
    if (object.parentProduct != null) {
      yield r'parentProduct';
      yield serializers.serialize(
        object.parentProduct,
        specifiedType: const FullType(CdashProductRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(CdashClassRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashClassLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashClassLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashClassRef),
          ) as CdashClassRef;
          result.self.replace(valueDes);
          break;
        case r'parentProduct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashProductRef),
          ) as CdashProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashClassRef),
          ) as CdashClassRef;
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
  CdashClassLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashClassLinksBuilder();
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

