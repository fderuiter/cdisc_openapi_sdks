//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtm_dataset_variable_ref.dart';
import 'package:openapi/src/model/root_sdtmig_dataset_variable_ref.dart';
import 'package:openapi/src/model/sdtmig_dataset_ref.dart';
import 'package:openapi/src/model/sdtmig_product_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/sdtmig_dataset_variable_ref.dart';
import 'package:openapi/src/model/root_ct_codelist_ref_element.dart';
import 'package:openapi/src/model/sdtm_class_variable_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sdtmig_dataset_variable_links.g.dart';

/// SdtmigDatasetVariableLinks
///
/// Properties:
/// * [self] 
/// * [codelist] 
/// * [modelClassVariable] 
/// * [modelDatasetVariable] 
/// * [parentProduct] 
/// * [parentDataset] 
/// * [rootItem] 
/// * [priorVersion] 
@BuiltValue()
abstract class SdtmigDatasetVariableLinks implements Built<SdtmigDatasetVariableLinks, SdtmigDatasetVariableLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmigDatasetVariableRef? get self;

  @BuiltValueField(wireName: r'codelist')
  BuiltList<RootCtCodelistRefElement>? get codelist;

  @BuiltValueField(wireName: r'modelClassVariable')
  SdtmClassVariableRef? get modelClassVariable;

  @BuiltValueField(wireName: r'modelDatasetVariable')
  SdtmDatasetVariableRef? get modelDatasetVariable;

  @BuiltValueField(wireName: r'parentProduct')
  SdtmigProductRef? get parentProduct;

  @BuiltValueField(wireName: r'parentDataset')
  SdtmigDatasetRef? get parentDataset;

  @BuiltValueField(wireName: r'rootItem')
  RootSdtmigDatasetVariableRef? get rootItem;

  @BuiltValueField(wireName: r'priorVersion')
  SdtmigDatasetVariableRef? get priorVersion;

  SdtmigDatasetVariableLinks._();

  factory SdtmigDatasetVariableLinks([void updates(SdtmigDatasetVariableLinksBuilder b)]) = _$SdtmigDatasetVariableLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SdtmigDatasetVariableLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SdtmigDatasetVariableLinks> get serializer => _$SdtmigDatasetVariableLinksSerializer();
}

class _$SdtmigDatasetVariableLinksSerializer implements PrimitiveSerializer<SdtmigDatasetVariableLinks> {
  @override
  final Iterable<Type> types = const [SdtmigDatasetVariableLinks, _$SdtmigDatasetVariableLinks];

  @override
  final String wireName = r'SdtmigDatasetVariableLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SdtmigDatasetVariableLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmigDatasetVariableRef),
      );
    }
    if (object.codelist != null) {
      yield r'codelist';
      yield serializers.serialize(
        object.codelist,
        specifiedType: const FullType(BuiltList, [FullType(RootCtCodelistRefElement)]),
      );
    }
    if (object.modelClassVariable != null) {
      yield r'modelClassVariable';
      yield serializers.serialize(
        object.modelClassVariable,
        specifiedType: const FullType(SdtmClassVariableRef),
      );
    }
    if (object.modelDatasetVariable != null) {
      yield r'modelDatasetVariable';
      yield serializers.serialize(
        object.modelDatasetVariable,
        specifiedType: const FullType(SdtmDatasetVariableRef),
      );
    }
    if (object.parentProduct != null) {
      yield r'parentProduct';
      yield serializers.serialize(
        object.parentProduct,
        specifiedType: const FullType(SdtmigProductRef),
      );
    }
    if (object.parentDataset != null) {
      yield r'parentDataset';
      yield serializers.serialize(
        object.parentDataset,
        specifiedType: const FullType(SdtmigDatasetRef),
      );
    }
    if (object.rootItem != null) {
      yield r'rootItem';
      yield serializers.serialize(
        object.rootItem,
        specifiedType: const FullType(RootSdtmigDatasetVariableRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(SdtmigDatasetVariableRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SdtmigDatasetVariableLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SdtmigDatasetVariableLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigDatasetVariableRef),
          ) as SdtmigDatasetVariableRef;
          result.self.replace(valueDes);
          break;
        case r'codelist':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(RootCtCodelistRefElement)]),
          ) as BuiltList<RootCtCodelistRefElement>;
          result.codelist.replace(valueDes);
          break;
        case r'modelClassVariable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmClassVariableRef),
          ) as SdtmClassVariableRef;
          result.modelClassVariable.replace(valueDes);
          break;
        case r'modelDatasetVariable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmDatasetVariableRef),
          ) as SdtmDatasetVariableRef;
          result.modelDatasetVariable.replace(valueDes);
          break;
        case r'parentProduct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigProductRef),
          ) as SdtmigProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'parentDataset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigDatasetRef),
          ) as SdtmigDatasetRef;
          result.parentDataset.replace(valueDes);
          break;
        case r'rootItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootSdtmigDatasetVariableRef),
          ) as RootSdtmigDatasetVariableRef;
          result.rootItem.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigDatasetVariableRef),
          ) as SdtmigDatasetVariableRef;
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
  SdtmigDatasetVariableLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdtmigDatasetVariableLinksBuilder();
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

