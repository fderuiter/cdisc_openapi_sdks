//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtm_class_variable_ref_target.dart';
import 'package:openapi/src/model/cdash_class_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/root_cdash_class_field_ref.dart';
import 'package:openapi/src/model/root_ct_codelist_ref_element.dart';
import 'package:openapi/src/model/sdtm_dataset_variable_ref_target.dart';
import 'package:openapi/src/model/cdash_product_ref.dart';
import 'package:openapi/src/model/cdash_class_field_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdash_class_field_links.g.dart';

/// CdashClassFieldLinks
///
/// Properties:
/// * [self] 
/// * [codelist] 
/// * [parentProduct] 
/// * [parentClass] 
/// * [rootItem] 
/// * [priorVersion] 
/// * [sdtmClassMappingTargets] 
/// * [sdtmDatasetMappingTargets] 
@BuiltValue()
abstract class CdashClassFieldLinks implements Built<CdashClassFieldLinks, CdashClassFieldLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashClassFieldRef? get self;

  @BuiltValueField(wireName: r'codelist')
  BuiltList<RootCtCodelistRefElement>? get codelist;

  @BuiltValueField(wireName: r'parentProduct')
  CdashProductRef? get parentProduct;

  @BuiltValueField(wireName: r'parentClass')
  CdashClassRef? get parentClass;

  @BuiltValueField(wireName: r'rootItem')
  RootCdashClassFieldRef? get rootItem;

  @BuiltValueField(wireName: r'priorVersion')
  CdashClassFieldRef? get priorVersion;

  @BuiltValueField(wireName: r'sdtmClassMappingTargets')
  BuiltList<SdtmClassVariableRefTarget>? get sdtmClassMappingTargets;

  @BuiltValueField(wireName: r'sdtmDatasetMappingTargets')
  BuiltList<SdtmDatasetVariableRefTarget>? get sdtmDatasetMappingTargets;

  CdashClassFieldLinks._();

  factory CdashClassFieldLinks([void updates(CdashClassFieldLinksBuilder b)]) = _$CdashClassFieldLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashClassFieldLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashClassFieldLinks> get serializer => _$CdashClassFieldLinksSerializer();
}

class _$CdashClassFieldLinksSerializer implements PrimitiveSerializer<CdashClassFieldLinks> {
  @override
  final Iterable<Type> types = const [CdashClassFieldLinks, _$CdashClassFieldLinks];

  @override
  final String wireName = r'CdashClassFieldLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashClassFieldLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashClassFieldRef),
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
    if (object.rootItem != null) {
      yield r'rootItem';
      yield serializers.serialize(
        object.rootItem,
        specifiedType: const FullType(RootCdashClassFieldRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(CdashClassFieldRef),
      );
    }
    if (object.sdtmClassMappingTargets != null) {
      yield r'sdtmClassMappingTargets';
      yield serializers.serialize(
        object.sdtmClassMappingTargets,
        specifiedType: const FullType(BuiltList, [FullType(SdtmClassVariableRefTarget)]),
      );
    }
    if (object.sdtmDatasetMappingTargets != null) {
      yield r'sdtmDatasetMappingTargets';
      yield serializers.serialize(
        object.sdtmDatasetMappingTargets,
        specifiedType: const FullType(BuiltList, [FullType(SdtmDatasetVariableRefTarget)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashClassFieldLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashClassFieldLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashClassFieldRef),
          ) as CdashClassFieldRef;
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
        case r'rootItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCdashClassFieldRef),
          ) as RootCdashClassFieldRef;
          result.rootItem.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashClassFieldRef),
          ) as CdashClassFieldRef;
          result.priorVersion.replace(valueDes);
          break;
        case r'sdtmClassMappingTargets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SdtmClassVariableRefTarget)]),
          ) as BuiltList<SdtmClassVariableRefTarget>;
          result.sdtmClassMappingTargets.replace(valueDes);
          break;
        case r'sdtmDatasetMappingTargets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SdtmDatasetVariableRefTarget)]),
          ) as BuiltList<SdtmDatasetVariableRefTarget>;
          result.sdtmDatasetMappingTargets.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CdashClassFieldLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashClassFieldLinksBuilder();
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

