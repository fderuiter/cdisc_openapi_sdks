//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdash_class_ref.dart';
import 'package:openapi/src/model/cdash_domain_field_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/root_cdash_domain_field_ref.dart';
import 'package:openapi/src/model/sdtmig_dataset_variable_ref_target.dart';
import 'package:openapi/src/model/root_ct_codelist_ref_element.dart';
import 'package:openapi/src/model/sdtm_dataset_variable_ref_target.dart';
import 'package:openapi/src/model/cdash_product_ref.dart';
import 'package:openapi/src/model/cdash_domain_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdash_domain_field_links.g.dart';

/// CdashDomainFieldLinks
///
/// Properties:
/// * [self] 
/// * [codelist] 
/// * [parentProduct] 
/// * [parentClass] 
/// * [parentDomain] 
/// * [rootItem] 
/// * [priorVersion] 
/// * [sdtmDatasetMappingTargets] 
/// * [sdtmigDatasetMappingTargets] 
@BuiltValue()
abstract class CdashDomainFieldLinks implements Built<CdashDomainFieldLinks, CdashDomainFieldLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashDomainFieldRef? get self;

  @BuiltValueField(wireName: r'codelist')
  BuiltList<RootCtCodelistRefElement>? get codelist;

  @BuiltValueField(wireName: r'parentProduct')
  CdashProductRef? get parentProduct;

  @BuiltValueField(wireName: r'parentClass')
  CdashClassRef? get parentClass;

  @BuiltValueField(wireName: r'parentDomain')
  CdashDomainRef? get parentDomain;

  @BuiltValueField(wireName: r'rootItem')
  RootCdashDomainFieldRef? get rootItem;

  @BuiltValueField(wireName: r'priorVersion')
  CdashDomainFieldRef? get priorVersion;

  @BuiltValueField(wireName: r'sdtmDatasetMappingTargets')
  BuiltList<SdtmDatasetVariableRefTarget>? get sdtmDatasetMappingTargets;

  @BuiltValueField(wireName: r'sdtmigDatasetMappingTargets')
  BuiltList<SdtmigDatasetVariableRefTarget>? get sdtmigDatasetMappingTargets;

  CdashDomainFieldLinks._();

  factory CdashDomainFieldLinks([void updates(CdashDomainFieldLinksBuilder b)]) = _$CdashDomainFieldLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashDomainFieldLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashDomainFieldLinks> get serializer => _$CdashDomainFieldLinksSerializer();
}

class _$CdashDomainFieldLinksSerializer implements PrimitiveSerializer<CdashDomainFieldLinks> {
  @override
  final Iterable<Type> types = const [CdashDomainFieldLinks, _$CdashDomainFieldLinks];

  @override
  final String wireName = r'CdashDomainFieldLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashDomainFieldLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashDomainFieldRef),
      );
    }
    if (object.codelist != null) {
      yield r'codelist';
      yield serializers.serialize(
        object.codelist,
        specifiedType: const FullType(BuiltList, [FullType(RootCtCodelistRefElement)]),
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
    if (object.parentDomain != null) {
      yield r'parentDomain';
      yield serializers.serialize(
        object.parentDomain,
        specifiedType: const FullType(CdashDomainRef),
      );
    }
    if (object.rootItem != null) {
      yield r'rootItem';
      yield serializers.serialize(
        object.rootItem,
        specifiedType: const FullType(RootCdashDomainFieldRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(CdashDomainFieldRef),
      );
    }
    if (object.sdtmDatasetMappingTargets != null) {
      yield r'sdtmDatasetMappingTargets';
      yield serializers.serialize(
        object.sdtmDatasetMappingTargets,
        specifiedType: const FullType(BuiltList, [FullType(SdtmDatasetVariableRefTarget)]),
      );
    }
    if (object.sdtmigDatasetMappingTargets != null) {
      yield r'sdtmigDatasetMappingTargets';
      yield serializers.serialize(
        object.sdtmigDatasetMappingTargets,
        specifiedType: const FullType(BuiltList, [FullType(SdtmigDatasetVariableRefTarget)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashDomainFieldLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashDomainFieldLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashDomainFieldRef),
          ) as CdashDomainFieldRef;
          result.self.replace(valueDes);
          break;
        case r'codelist':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(RootCtCodelistRefElement)]),
          ) as BuiltList<RootCtCodelistRefElement>;
          result.codelist.replace(valueDes);
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
        case r'parentDomain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashDomainRef),
          ) as CdashDomainRef;
          result.parentDomain.replace(valueDes);
          break;
        case r'rootItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCdashDomainFieldRef),
          ) as RootCdashDomainFieldRef;
          result.rootItem.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashDomainFieldRef),
          ) as CdashDomainFieldRef;
          result.priorVersion.replace(valueDes);
          break;
        case r'sdtmDatasetMappingTargets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SdtmDatasetVariableRefTarget)]),
          ) as BuiltList<SdtmDatasetVariableRefTarget>;
          result.sdtmDatasetMappingTargets.replace(valueDes);
          break;
        case r'sdtmigDatasetMappingTargets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SdtmigDatasetVariableRefTarget)]),
          ) as BuiltList<SdtmigDatasetVariableRefTarget>;
          result.sdtmigDatasetMappingTargets.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CdashDomainFieldLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashDomainFieldLinksBuilder();
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

