//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_product_ref.dart';
import 'package:openapi/src/model/cdashig_scenario_field_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/cdashig_scenario_ref.dart';
import 'package:openapi/src/model/root_cdashig_scenario_field_ref.dart';
import 'package:openapi/src/model/sdtmig_dataset_variable_ref_target.dart';
import 'package:openapi/src/model/cdashig_domain_ref.dart';
import 'package:openapi/src/model/root_ct_codelist_ref_element.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdashig_scenario_field_links.g.dart';

/// CdashigScenarioFieldLinks
///
/// Properties:
/// * [self] 
/// * [codelist] 
/// * [parentProduct] 
/// * [parentDomain] 
/// * [parentScenario] 
/// * [rootItem] 
/// * [priorVersion] 
/// * [sdtmigDatasetMappingTargets] 
@BuiltValue()
abstract class CdashigScenarioFieldLinks implements Built<CdashigScenarioFieldLinks, CdashigScenarioFieldLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashigScenarioFieldRef? get self;

  @BuiltValueField(wireName: r'codelist')
  BuiltList<RootCtCodelistRefElement>? get codelist;

  @BuiltValueField(wireName: r'parentProduct')
  CdashigProductRef? get parentProduct;

  @BuiltValueField(wireName: r'parentDomain')
  CdashigDomainRef? get parentDomain;

  @BuiltValueField(wireName: r'parentScenario')
  CdashigScenarioRef? get parentScenario;

  @BuiltValueField(wireName: r'rootItem')
  RootCdashigScenarioFieldRef? get rootItem;

  @BuiltValueField(wireName: r'priorVersion')
  CdashigScenarioFieldRef? get priorVersion;

  @BuiltValueField(wireName: r'sdtmigDatasetMappingTargets')
  BuiltList<SdtmigDatasetVariableRefTarget>? get sdtmigDatasetMappingTargets;

  CdashigScenarioFieldLinks._();

  factory CdashigScenarioFieldLinks([void updates(CdashigScenarioFieldLinksBuilder b)]) = _$CdashigScenarioFieldLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashigScenarioFieldLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashigScenarioFieldLinks> get serializer => _$CdashigScenarioFieldLinksSerializer();
}

class _$CdashigScenarioFieldLinksSerializer implements PrimitiveSerializer<CdashigScenarioFieldLinks> {
  @override
  final Iterable<Type> types = const [CdashigScenarioFieldLinks, _$CdashigScenarioFieldLinks];

  @override
  final String wireName = r'CdashigScenarioFieldLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashigScenarioFieldLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashigScenarioFieldRef),
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
    if (object.parentScenario != null) {
      yield r'parentScenario';
      yield serializers.serialize(
        object.parentScenario,
        specifiedType: const FullType(CdashigScenarioRef),
      );
    }
    if (object.rootItem != null) {
      yield r'rootItem';
      yield serializers.serialize(
        object.rootItem,
        specifiedType: const FullType(RootCdashigScenarioFieldRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(CdashigScenarioFieldRef),
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
    CdashigScenarioFieldLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashigScenarioFieldLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigScenarioFieldRef),
          ) as CdashigScenarioFieldRef;
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
        case r'parentScenario':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigScenarioRef),
          ) as CdashigScenarioRef;
          result.parentScenario.replace(valueDes);
          break;
        case r'rootItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCdashigScenarioFieldRef),
          ) as RootCdashigScenarioFieldRef;
          result.rootItem.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigScenarioFieldRef),
          ) as CdashigScenarioFieldRef;
          result.priorVersion.replace(valueDes);
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
  CdashigScenarioFieldLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashigScenarioFieldLinksBuilder();
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

