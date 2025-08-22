//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtmig_product_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/sdtmig_dataset_variable_ref_element.dart';
import 'package:openapi/src/model/sdtm_dataset_ref.dart';
import 'package:openapi/src/model/sdtmig_class_ref.dart';
import 'package:openapi/src/model/sdtmig_dataset_variables_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sdtmig_dataset_variables_links.g.dart';

/// SdtmigDatasetVariablesLinks
///
/// Properties:
/// * [self] 
/// * [modelDataset] 
/// * [parentProduct] 
/// * [parentClass] 
/// * [priorVersion] 
/// * [datasetVariables] 
@BuiltValue()
abstract class SdtmigDatasetVariablesLinks implements Built<SdtmigDatasetVariablesLinks, SdtmigDatasetVariablesLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmigDatasetVariablesRef? get self;

  @BuiltValueField(wireName: r'modelDataset')
  SdtmDatasetRef? get modelDataset;

  @BuiltValueField(wireName: r'parentProduct')
  SdtmigProductRef? get parentProduct;

  @BuiltValueField(wireName: r'parentClass')
  SdtmigClassRef? get parentClass;

  @BuiltValueField(wireName: r'priorVersion')
  SdtmigDatasetVariablesRef? get priorVersion;

  @BuiltValueField(wireName: r'datasetVariables')
  BuiltList<SdtmigDatasetVariableRefElement>? get datasetVariables;

  SdtmigDatasetVariablesLinks._();

  factory SdtmigDatasetVariablesLinks([void updates(SdtmigDatasetVariablesLinksBuilder b)]) = _$SdtmigDatasetVariablesLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SdtmigDatasetVariablesLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SdtmigDatasetVariablesLinks> get serializer => _$SdtmigDatasetVariablesLinksSerializer();
}

class _$SdtmigDatasetVariablesLinksSerializer implements PrimitiveSerializer<SdtmigDatasetVariablesLinks> {
  @override
  final Iterable<Type> types = const [SdtmigDatasetVariablesLinks, _$SdtmigDatasetVariablesLinks];

  @override
  final String wireName = r'SdtmigDatasetVariablesLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SdtmigDatasetVariablesLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmigDatasetVariablesRef),
      );
    }
    if (object.modelDataset != null) {
      yield r'modelDataset';
      yield serializers.serialize(
        object.modelDataset,
        specifiedType: const FullType(SdtmDatasetRef),
      );
    }
    if (object.parentProduct != null) {
      yield r'parentProduct';
      yield serializers.serialize(
        object.parentProduct,
        specifiedType: const FullType(SdtmigProductRef),
      );
    }
    if (object.parentClass != null) {
      yield r'parentClass';
      yield serializers.serialize(
        object.parentClass,
        specifiedType: const FullType(SdtmigClassRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(SdtmigDatasetVariablesRef),
      );
    }
    if (object.datasetVariables != null) {
      yield r'datasetVariables';
      yield serializers.serialize(
        object.datasetVariables,
        specifiedType: const FullType(BuiltList, [FullType(SdtmigDatasetVariableRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SdtmigDatasetVariablesLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SdtmigDatasetVariablesLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigDatasetVariablesRef),
          ) as SdtmigDatasetVariablesRef;
          result.self.replace(valueDes);
          break;
        case r'modelDataset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmDatasetRef),
          ) as SdtmDatasetRef;
          result.modelDataset.replace(valueDes);
          break;
        case r'parentProduct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigProductRef),
          ) as SdtmigProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'parentClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigClassRef),
          ) as SdtmigClassRef;
          result.parentClass.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigDatasetVariablesRef),
          ) as SdtmigDatasetVariablesRef;
          result.priorVersion.replace(valueDes);
          break;
        case r'datasetVariables':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SdtmigDatasetVariableRefElement)]),
          ) as BuiltList<SdtmigDatasetVariableRefElement>;
          result.datasetVariables.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SdtmigDatasetVariablesLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdtmigDatasetVariablesLinksBuilder();
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

