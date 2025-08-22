//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_product_ref.dart';
import 'package:openapi/src/model/sdtm_class_variable_ref_target.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/sdtmig_dataset_variable_ref_target.dart';
import 'package:openapi/src/model/cdashig_domain_ref.dart';
import 'package:openapi/src/model/root_cdashig_domain_field_ref.dart';
import 'package:openapi/src/model/root_ct_codelist_ref_element.dart';
import 'package:openapi/src/model/cdashig_domain_field_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdashig_domain_field_links.g.dart';

/// CdashigDomainFieldLinks
///
/// Properties:
/// * [self] 
/// * [codelist] 
/// * [parentProduct] 
/// * [parentDomain] 
/// * [rootItem] 
/// * [priorVersion] 
/// * [sdtmClassMappingTargets] 
/// * [sdtmigDatasetMappingTargets] 
@BuiltValue()
abstract class CdashigDomainFieldLinks implements Built<CdashigDomainFieldLinks, CdashigDomainFieldLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashigDomainFieldRef? get self;

  @BuiltValueField(wireName: r'codelist')
  BuiltList<RootCtCodelistRefElement>? get codelist;

  @BuiltValueField(wireName: r'parentProduct')
  CdashigProductRef? get parentProduct;

  @BuiltValueField(wireName: r'parentDomain')
  CdashigDomainRef? get parentDomain;

  @BuiltValueField(wireName: r'rootItem')
  RootCdashigDomainFieldRef? get rootItem;

  @BuiltValueField(wireName: r'priorVersion')
  CdashigDomainFieldRef? get priorVersion;

  @BuiltValueField(wireName: r'sdtmClassMappingTargets')
  BuiltList<SdtmClassVariableRefTarget>? get sdtmClassMappingTargets;

  @BuiltValueField(wireName: r'sdtmigDatasetMappingTargets')
  BuiltList<SdtmigDatasetVariableRefTarget>? get sdtmigDatasetMappingTargets;

  CdashigDomainFieldLinks._();

  factory CdashigDomainFieldLinks([void updates(CdashigDomainFieldLinksBuilder b)]) = _$CdashigDomainFieldLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashigDomainFieldLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashigDomainFieldLinks> get serializer => _$CdashigDomainFieldLinksSerializer();
}

class _$CdashigDomainFieldLinksSerializer implements PrimitiveSerializer<CdashigDomainFieldLinks> {
  @override
  final Iterable<Type> types = const [CdashigDomainFieldLinks, _$CdashigDomainFieldLinks];

  @override
  final String wireName = r'CdashigDomainFieldLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashigDomainFieldLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashigDomainFieldRef),
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
        specifiedType: const FullType(CdashigProductRef),
      );
    }
    if (object.parentDomain != null) {
      yield r'parentDomain';
      yield serializers.serialize(
        object.parentDomain,
        specifiedType: const FullType(CdashigDomainRef),
      );
    }
    if (object.rootItem != null) {
      yield r'rootItem';
      yield serializers.serialize(
        object.rootItem,
        specifiedType: const FullType(RootCdashigDomainFieldRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(CdashigDomainFieldRef),
      );
    }
    if (object.sdtmClassMappingTargets != null) {
      yield r'sdtmClassMappingTargets';
      yield serializers.serialize(
        object.sdtmClassMappingTargets,
        specifiedType: const FullType(BuiltList, [FullType(SdtmClassVariableRefTarget)]),
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
    CdashigDomainFieldLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashigDomainFieldLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigDomainFieldRef),
          ) as CdashigDomainFieldRef;
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
            specifiedType: const FullType(CdashigProductRef),
          ) as CdashigProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'parentDomain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigDomainRef),
          ) as CdashigDomainRef;
          result.parentDomain.replace(valueDes);
          break;
        case r'rootItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCdashigDomainFieldRef),
          ) as RootCdashigDomainFieldRef;
          result.rootItem.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigDomainFieldRef),
          ) as CdashigDomainFieldRef;
          result.priorVersion.replace(valueDes);
          break;
        case r'sdtmClassMappingTargets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SdtmClassVariableRefTarget)]),
          ) as BuiltList<SdtmClassVariableRefTarget>;
          result.sdtmClassMappingTargets.replace(valueDes);
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
  CdashigDomainFieldLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashigDomainFieldLinksBuilder();
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

