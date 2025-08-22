//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdash_domain_field_ref_element.dart';
import 'package:openapi/src/model/cdash_class_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/cdash_product_ref.dart';
import 'package:openapi/src/model/cdash_domain_fields_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdash_domain_fields_links.g.dart';

/// CdashDomainFieldsLinks
///
/// Properties:
/// * [self] 
/// * [parentProduct] 
/// * [parentClass] 
/// * [fields] 
@BuiltValue()
abstract class CdashDomainFieldsLinks implements Built<CdashDomainFieldsLinks, CdashDomainFieldsLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashDomainFieldsRef? get self;

  @BuiltValueField(wireName: r'parentProduct')
  CdashProductRef? get parentProduct;

  @BuiltValueField(wireName: r'parentClass')
  CdashClassRef? get parentClass;

  @BuiltValueField(wireName: r'fields')
  BuiltList<CdashDomainFieldRefElement>? get fields;

  CdashDomainFieldsLinks._();

  factory CdashDomainFieldsLinks([void updates(CdashDomainFieldsLinksBuilder b)]) = _$CdashDomainFieldsLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashDomainFieldsLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashDomainFieldsLinks> get serializer => _$CdashDomainFieldsLinksSerializer();
}

class _$CdashDomainFieldsLinksSerializer implements PrimitiveSerializer<CdashDomainFieldsLinks> {
  @override
  final Iterable<Type> types = const [CdashDomainFieldsLinks, _$CdashDomainFieldsLinks];

  @override
  final String wireName = r'CdashDomainFieldsLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashDomainFieldsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashDomainFieldsRef),
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
    if (object.fields != null) {
      yield r'fields';
      yield serializers.serialize(
        object.fields,
        specifiedType: const FullType(BuiltList, [FullType(CdashDomainFieldRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashDomainFieldsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashDomainFieldsLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashDomainFieldsRef),
          ) as CdashDomainFieldsRef;
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
        case r'fields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CdashDomainFieldRefElement)]),
          ) as BuiltList<CdashDomainFieldRefElement>;
          result.fields.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CdashDomainFieldsLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashDomainFieldsLinksBuilder();
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

