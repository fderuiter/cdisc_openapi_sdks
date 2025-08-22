//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_product_ref.dart';
import 'package:openapi/src/model/cdashig_class_ref.dart';
import 'package:openapi/src/model/cdashig_domain_field_ref_element.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/cdashig_domain_fields_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdashig_domain_fields_links.g.dart';

/// CdashigDomainFieldsLinks
///
/// Properties:
/// * [self] 
/// * [parentProduct] 
/// * [parentClass] 
/// * [fields] 
@BuiltValue()
abstract class CdashigDomainFieldsLinks implements Built<CdashigDomainFieldsLinks, CdashigDomainFieldsLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashigDomainFieldsRef? get self;

  @BuiltValueField(wireName: r'parentProduct')
  CdashigProductRef? get parentProduct;

  @BuiltValueField(wireName: r'parentClass')
  CdashigClassRef? get parentClass;

  @BuiltValueField(wireName: r'fields')
  BuiltList<CdashigDomainFieldRefElement>? get fields;

  CdashigDomainFieldsLinks._();

  factory CdashigDomainFieldsLinks([void updates(CdashigDomainFieldsLinksBuilder b)]) = _$CdashigDomainFieldsLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashigDomainFieldsLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashigDomainFieldsLinks> get serializer => _$CdashigDomainFieldsLinksSerializer();
}

class _$CdashigDomainFieldsLinksSerializer implements PrimitiveSerializer<CdashigDomainFieldsLinks> {
  @override
  final Iterable<Type> types = const [CdashigDomainFieldsLinks, _$CdashigDomainFieldsLinks];

  @override
  final String wireName = r'CdashigDomainFieldsLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashigDomainFieldsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashigDomainFieldsRef),
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
    if (object.fields != null) {
      yield r'fields';
      yield serializers.serialize(
        object.fields,
        specifiedType: const FullType(BuiltList, [FullType(CdashigDomainFieldRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashigDomainFieldsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashigDomainFieldsLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigDomainFieldsRef),
          ) as CdashigDomainFieldsRef;
          result.self.replace(valueDes);
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
        case r'fields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CdashigDomainFieldRefElement)]),
          ) as BuiltList<CdashigDomainFieldRefElement>;
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
  CdashigDomainFieldsLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashigDomainFieldsLinksBuilder();
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

