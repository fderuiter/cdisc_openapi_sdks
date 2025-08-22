//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtm_class_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/sdtm_dataset_variables_ref.dart';
import 'package:openapi/src/model/sdtm_product_ref.dart';
import 'package:openapi/src/model/sdtm_dataset_variable_ref_element.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sdtm_dataset_variables_links.g.dart';

/// SdtmDatasetVariablesLinks
///
/// Properties:
/// * [self] 
/// * [parentProduct] 
/// * [parentClass] 
/// * [priorVersion] 
/// * [datasetVariables] 
@BuiltValue()
abstract class SdtmDatasetVariablesLinks implements Built<SdtmDatasetVariablesLinks, SdtmDatasetVariablesLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmDatasetVariablesRef? get self;

  @BuiltValueField(wireName: r'parentProduct')
  SdtmProductRef? get parentProduct;

  @BuiltValueField(wireName: r'parentClass')
  SdtmClassRef? get parentClass;

  @BuiltValueField(wireName: r'priorVersion')
  SdtmDatasetVariablesRef? get priorVersion;

  @BuiltValueField(wireName: r'datasetVariables')
  BuiltList<SdtmDatasetVariableRefElement>? get datasetVariables;

  SdtmDatasetVariablesLinks._();

  factory SdtmDatasetVariablesLinks([void updates(SdtmDatasetVariablesLinksBuilder b)]) = _$SdtmDatasetVariablesLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SdtmDatasetVariablesLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SdtmDatasetVariablesLinks> get serializer => _$SdtmDatasetVariablesLinksSerializer();
}

class _$SdtmDatasetVariablesLinksSerializer implements PrimitiveSerializer<SdtmDatasetVariablesLinks> {
  @override
  final Iterable<Type> types = const [SdtmDatasetVariablesLinks, _$SdtmDatasetVariablesLinks];

  @override
  final String wireName = r'SdtmDatasetVariablesLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SdtmDatasetVariablesLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmDatasetVariablesRef),
      );
    }
    if (object.parentProduct != null) {
      yield r'parentProduct';
      yield serializers.serialize(
        object.parentProduct,
        specifiedType: const FullType(SdtmProductRef),
      );
    }
    if (object.parentClass != null) {
      yield r'parentClass';
      yield serializers.serialize(
        object.parentClass,
        specifiedType: const FullType(SdtmClassRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(SdtmDatasetVariablesRef),
      );
    }
    if (object.datasetVariables != null) {
      yield r'datasetVariables';
      yield serializers.serialize(
        object.datasetVariables,
        specifiedType: const FullType(BuiltList, [FullType(SdtmDatasetVariableRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SdtmDatasetVariablesLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SdtmDatasetVariablesLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmDatasetVariablesRef),
          ) as SdtmDatasetVariablesRef;
          result.self.replace(valueDes);
          break;
        case r'parentProduct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmProductRef),
          ) as SdtmProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'parentClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmClassRef),
          ) as SdtmClassRef;
          result.parentClass.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmDatasetVariablesRef),
          ) as SdtmDatasetVariablesRef;
          result.priorVersion.replace(valueDes);
          break;
        case r'datasetVariables':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SdtmDatasetVariableRefElement)]),
          ) as BuiltList<SdtmDatasetVariableRefElement>;
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
  SdtmDatasetVariablesLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdtmDatasetVariablesLinksBuilder();
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

