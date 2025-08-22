//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdash_class_ref.dart';
import 'package:openapi/src/model/cdash_product_ref.dart';
import 'package:openapi/src/model/cdash_domain_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdash_domain_links.g.dart';

/// CdashDomainLinks
///
/// Properties:
/// * [self] 
/// * [parentProduct] 
/// * [parentClass] 
/// * [priorVersion] 
@BuiltValue()
abstract class CdashDomainLinks implements Built<CdashDomainLinks, CdashDomainLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashDomainRef? get self;

  @BuiltValueField(wireName: r'parentProduct')
  CdashProductRef? get parentProduct;

  @BuiltValueField(wireName: r'parentClass')
  CdashClassRef? get parentClass;

  @BuiltValueField(wireName: r'priorVersion')
  CdashDomainRef? get priorVersion;

  CdashDomainLinks._();

  factory CdashDomainLinks([void updates(CdashDomainLinksBuilder b)]) = _$CdashDomainLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashDomainLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashDomainLinks> get serializer => _$CdashDomainLinksSerializer();
}

class _$CdashDomainLinksSerializer implements PrimitiveSerializer<CdashDomainLinks> {
  @override
  final Iterable<Type> types = const [CdashDomainLinks, _$CdashDomainLinks];

  @override
  final String wireName = r'CdashDomainLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashDomainLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashDomainRef),
      );
    }
    if (object.parentProduct != null) {
      yield r'parentProduct';
      yield serializers.serialize(
        object.parentProduct,
        specifiedType: const FullType(CdashProductRef),
      );
    }
    if (object.parentClass != null) {
      yield r'parentClass';
      yield serializers.serialize(
        object.parentClass,
        specifiedType: const FullType(CdashClassRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(CdashDomainRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashDomainLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashDomainLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashDomainRef),
          ) as CdashDomainRef;
          result.self.replace(valueDes);
          break;
        case r'parentProduct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashProductRef),
          ) as CdashProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'parentClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashClassRef),
          ) as CdashClassRef;
          result.parentClass.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashDomainRef),
          ) as CdashDomainRef;
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
  CdashDomainLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashDomainLinksBuilder();
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

