//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_product_ref.dart';
import 'package:openapi/src/model/cdashig_class_ref.dart';
import 'package:openapi/src/model/cdashig_scenario_fields_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/cdashig_domain_ref.dart';
import 'package:openapi/src/model/cdashig_scenario_field_ref_element.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdashig_scenario_fields_links.g.dart';

/// CdashigScenarioFieldsLinks
///
/// Properties:
/// * [self] 
/// * [parentProduct] 
/// * [parentClass] 
/// * [parentDomain] 
/// * [fields] 
@BuiltValue()
abstract class CdashigScenarioFieldsLinks implements Built<CdashigScenarioFieldsLinks, CdashigScenarioFieldsLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashigScenarioFieldsRef? get self;

  @BuiltValueField(wireName: r'parentProduct')
  CdashigProductRef? get parentProduct;

  @BuiltValueField(wireName: r'parentClass')
  CdashigClassRef? get parentClass;

  @BuiltValueField(wireName: r'parentDomain')
  CdashigDomainRef? get parentDomain;

  @BuiltValueField(wireName: r'fields')
  BuiltList<CdashigScenarioFieldRefElement>? get fields;

  CdashigScenarioFieldsLinks._();

  factory CdashigScenarioFieldsLinks([void updates(CdashigScenarioFieldsLinksBuilder b)]) = _$CdashigScenarioFieldsLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashigScenarioFieldsLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashigScenarioFieldsLinks> get serializer => _$CdashigScenarioFieldsLinksSerializer();
}

class _$CdashigScenarioFieldsLinksSerializer implements PrimitiveSerializer<CdashigScenarioFieldsLinks> {
  @override
  final Iterable<Type> types = const [CdashigScenarioFieldsLinks, _$CdashigScenarioFieldsLinks];

  @override
  final String wireName = r'CdashigScenarioFieldsLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashigScenarioFieldsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashigScenarioFieldsRef),
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
    if (object.parentDomain != null) {
      yield r'parentDomain';
      yield serializers.serialize(
        object.parentDomain,
        specifiedType: const FullType(CdashigDomainRef),
      );
    }
    if (object.fields != null) {
      yield r'fields';
      yield serializers.serialize(
        object.fields,
        specifiedType: const FullType(BuiltList, [FullType(CdashigScenarioFieldRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashigScenarioFieldsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashigScenarioFieldsLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigScenarioFieldsRef),
          ) as CdashigScenarioFieldsRef;
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
        case r'parentDomain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigDomainRef),
          ) as CdashigDomainRef;
          result.parentDomain.replace(valueDes);
          break;
        case r'fields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CdashigScenarioFieldRefElement)]),
          ) as BuiltList<CdashigScenarioFieldRefElement>;
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
  CdashigScenarioFieldsLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashigScenarioFieldsLinksBuilder();
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

