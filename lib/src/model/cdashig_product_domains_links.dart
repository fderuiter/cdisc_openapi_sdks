//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_product_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/cdashig_product_domains_ref.dart';
import 'package:openapi/src/model/cdashig_domain_ref_element.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdashig_product_domains_links.g.dart';

/// CdashigProductDomainsLinks
///
/// Properties:
/// * [self] 
/// * [parentProduct] 
/// * [domains] 
@BuiltValue()
abstract class CdashigProductDomainsLinks implements Built<CdashigProductDomainsLinks, CdashigProductDomainsLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashigProductDomainsRef? get self;

  @BuiltValueField(wireName: r'parentProduct')
  CdashigProductRef? get parentProduct;

  @BuiltValueField(wireName: r'domains')
  BuiltList<CdashigDomainRefElement>? get domains;

  CdashigProductDomainsLinks._();

  factory CdashigProductDomainsLinks([void updates(CdashigProductDomainsLinksBuilder b)]) = _$CdashigProductDomainsLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashigProductDomainsLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashigProductDomainsLinks> get serializer => _$CdashigProductDomainsLinksSerializer();
}

class _$CdashigProductDomainsLinksSerializer implements PrimitiveSerializer<CdashigProductDomainsLinks> {
  @override
  final Iterable<Type> types = const [CdashigProductDomainsLinks, _$CdashigProductDomainsLinks];

  @override
  final String wireName = r'CdashigProductDomainsLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashigProductDomainsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashigProductDomainsRef),
      );
    }
    if (object.parentProduct != null) {
      yield r'parentProduct';
      yield serializers.serialize(
        object.parentProduct,
        specifiedType: const FullType(CdashigProductRef),
      );
    }
    if (object.domains != null) {
      yield r'domains';
      yield serializers.serialize(
        object.domains,
        specifiedType: const FullType(BuiltList, [FullType(CdashigDomainRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashigProductDomainsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashigProductDomainsLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigProductDomainsRef),
          ) as CdashigProductDomainsRef;
          result.self.replace(valueDes);
          break;
        case r'parentProduct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigProductRef),
          ) as CdashigProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'domains':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CdashigDomainRefElement)]),
          ) as BuiltList<CdashigDomainRefElement>;
          result.domains.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CdashigProductDomainsLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashigProductDomainsLinksBuilder();
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

