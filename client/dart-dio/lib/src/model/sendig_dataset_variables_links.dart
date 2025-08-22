//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sendig_product_ref.dart';
import 'package:openapi/src/model/sendig_dataset_variables_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/sdtm_dataset_ref.dart';
import 'package:openapi/src/model/sendig_dataset_variable_ref_element.dart';
import 'package:openapi/src/model/sendig_class_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sendig_dataset_variables_links.g.dart';

/// SendigDatasetVariablesLinks
///
/// Properties:
/// * [self] 
/// * [modelDataset] 
/// * [parentProduct] 
/// * [parentClass] 
/// * [priorVersion] 
/// * [datasetVariables] 
@BuiltValue()
abstract class SendigDatasetVariablesLinks implements Built<SendigDatasetVariablesLinks, SendigDatasetVariablesLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  SendigDatasetVariablesRef? get self;

  @BuiltValueField(wireName: r'modelDataset')
  SdtmDatasetRef? get modelDataset;

  @BuiltValueField(wireName: r'parentProduct')
  SendigProductRef? get parentProduct;

  @BuiltValueField(wireName: r'parentClass')
  SendigClassRef? get parentClass;

  @BuiltValueField(wireName: r'priorVersion')
  SendigDatasetVariablesRef? get priorVersion;

  @BuiltValueField(wireName: r'datasetVariables')
  BuiltList<SendigDatasetVariableRefElement>? get datasetVariables;

  SendigDatasetVariablesLinks._();

  factory SendigDatasetVariablesLinks([void updates(SendigDatasetVariablesLinksBuilder b)]) = _$SendigDatasetVariablesLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendigDatasetVariablesLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendigDatasetVariablesLinks> get serializer => _$SendigDatasetVariablesLinksSerializer();
}

class _$SendigDatasetVariablesLinksSerializer implements PrimitiveSerializer<SendigDatasetVariablesLinks> {
  @override
  final Iterable<Type> types = const [SendigDatasetVariablesLinks, _$SendigDatasetVariablesLinks];

  @override
  final String wireName = r'SendigDatasetVariablesLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendigDatasetVariablesLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SendigDatasetVariablesRef),
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
        specifiedType: const FullType(SendigProductRef),
      );
    }
    if (object.parentClass != null) {
      yield r'parentClass';
      yield serializers.serialize(
        object.parentClass,
        specifiedType: const FullType(SendigClassRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(SendigDatasetVariablesRef),
      );
    }
    if (object.datasetVariables != null) {
      yield r'datasetVariables';
      yield serializers.serialize(
        object.datasetVariables,
        specifiedType: const FullType(BuiltList, [FullType(SendigDatasetVariableRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SendigDatasetVariablesLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendigDatasetVariablesLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendigDatasetVariablesRef),
          ) as SendigDatasetVariablesRef;
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
            specifiedType: const FullType(SendigProductRef),
          ) as SendigProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'parentClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendigClassRef),
          ) as SendigClassRef;
          result.parentClass.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendigDatasetVariablesRef),
          ) as SendigDatasetVariablesRef;
          result.priorVersion.replace(valueDes);
          break;
        case r'datasetVariables':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SendigDatasetVariableRefElement)]),
          ) as BuiltList<SendigDatasetVariableRefElement>;
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
  SendigDatasetVariablesLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendigDatasetVariablesLinksBuilder();
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

