//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtm_dataset_variable_ref.dart';
import 'package:openapi/src/model/sdtm_dataset_ref.dart';
import 'package:openapi/src/model/sdtm_product_ref.dart';
import 'package:openapi/src/model/root_sdtm_dataset_variable_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sdtm_dataset_variable_links.g.dart';

/// SdtmDatasetVariableLinks
///
/// Properties:
/// * [self] 
/// * [parentProduct] 
/// * [parentDataset] 
/// * [rootItem] 
/// * [priorVersion] 
@BuiltValue()
abstract class SdtmDatasetVariableLinks implements Built<SdtmDatasetVariableLinks, SdtmDatasetVariableLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmDatasetVariableRef? get self;

  @BuiltValueField(wireName: r'parentProduct')
  SdtmProductRef? get parentProduct;

  @BuiltValueField(wireName: r'parentDataset')
  SdtmDatasetRef? get parentDataset;

  @BuiltValueField(wireName: r'rootItem')
  RootSdtmDatasetVariableRef? get rootItem;

  @BuiltValueField(wireName: r'priorVersion')
  SdtmDatasetVariableRef? get priorVersion;

  SdtmDatasetVariableLinks._();

  factory SdtmDatasetVariableLinks([void updates(SdtmDatasetVariableLinksBuilder b)]) = _$SdtmDatasetVariableLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SdtmDatasetVariableLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SdtmDatasetVariableLinks> get serializer => _$SdtmDatasetVariableLinksSerializer();
}

class _$SdtmDatasetVariableLinksSerializer implements PrimitiveSerializer<SdtmDatasetVariableLinks> {
  @override
  final Iterable<Type> types = const [SdtmDatasetVariableLinks, _$SdtmDatasetVariableLinks];

  @override
  final String wireName = r'SdtmDatasetVariableLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SdtmDatasetVariableLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmDatasetVariableRef),
      );
    }
    if (object.parentProduct != null) {
      yield r'parentProduct';
      yield serializers.serialize(
        object.parentProduct,
        specifiedType: const FullType(SdtmProductRef),
      );
    }
    if (object.parentDataset != null) {
      yield r'parentDataset';
      yield serializers.serialize(
        object.parentDataset,
        specifiedType: const FullType(SdtmDatasetRef),
      );
    }
    if (object.rootItem != null) {
      yield r'rootItem';
      yield serializers.serialize(
        object.rootItem,
        specifiedType: const FullType(RootSdtmDatasetVariableRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(SdtmDatasetVariableRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SdtmDatasetVariableLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SdtmDatasetVariableLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmDatasetVariableRef),
          ) as SdtmDatasetVariableRef;
          result.self.replace(valueDes);
          break;
        case r'parentProduct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmProductRef),
          ) as SdtmProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'parentDataset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmDatasetRef),
          ) as SdtmDatasetRef;
          result.parentDataset.replace(valueDes);
          break;
        case r'rootItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootSdtmDatasetVariableRef),
          ) as RootSdtmDatasetVariableRef;
          result.rootItem.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmDatasetVariableRef),
          ) as SdtmDatasetVariableRef;
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
  SdtmDatasetVariableLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdtmDatasetVariableLinksBuilder();
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

