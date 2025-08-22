//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtm_dataset_variable_ref.dart';
import 'package:openapi/src/model/sendig_dataset_ref.dart';
import 'package:openapi/src/model/sendig_dataset_variable_ref.dart';
import 'package:openapi/src/model/sendig_product_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/root_ct_codelist_ref_element.dart';
import 'package:openapi/src/model/sdtm_class_variable_ref.dart';
import 'package:openapi/src/model/root_sendig_dataset_variable_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sendig_dataset_variable_links.g.dart';

/// SendigDatasetVariableLinks
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
abstract class SendigDatasetVariableLinks implements Built<SendigDatasetVariableLinks, SendigDatasetVariableLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  SendigDatasetVariableRef? get self;

  @BuiltValueField(wireName: r'codelist')
  BuiltList<RootCtCodelistRefElement>? get codelist;

  @BuiltValueField(wireName: r'modelClassVariable')
  SdtmClassVariableRef? get modelClassVariable;

  @BuiltValueField(wireName: r'modelDatasetVariable')
  SdtmDatasetVariableRef? get modelDatasetVariable;

  @BuiltValueField(wireName: r'parentProduct')
  SendigProductRef? get parentProduct;

  @BuiltValueField(wireName: r'parentDataset')
  SendigDatasetRef? get parentDataset;

  @BuiltValueField(wireName: r'rootItem')
  RootSendigDatasetVariableRef? get rootItem;

  @BuiltValueField(wireName: r'priorVersion')
  SendigDatasetVariableRef? get priorVersion;

  SendigDatasetVariableLinks._();

  factory SendigDatasetVariableLinks([void updates(SendigDatasetVariableLinksBuilder b)]) = _$SendigDatasetVariableLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendigDatasetVariableLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendigDatasetVariableLinks> get serializer => _$SendigDatasetVariableLinksSerializer();
}

class _$SendigDatasetVariableLinksSerializer implements PrimitiveSerializer<SendigDatasetVariableLinks> {
  @override
  final Iterable<Type> types = const [SendigDatasetVariableLinks, _$SendigDatasetVariableLinks];

  @override
  final String wireName = r'SendigDatasetVariableLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendigDatasetVariableLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SendigDatasetVariableRef),
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
        specifiedType: const FullType(SendigProductRef),
      );
    }
    if (object.parentDataset != null) {
      yield r'parentDataset';
      yield serializers.serialize(
        object.parentDataset,
        specifiedType: const FullType(SendigDatasetRef),
      );
    }
    if (object.rootItem != null) {
      yield r'rootItem';
      yield serializers.serialize(
        object.rootItem,
        specifiedType: const FullType(RootSendigDatasetVariableRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(SendigDatasetVariableRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SendigDatasetVariableLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendigDatasetVariableLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendigDatasetVariableRef),
          ) as SendigDatasetVariableRef;
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
            specifiedType: const FullType(SendigProductRef),
          ) as SendigProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'parentDataset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendigDatasetRef),
          ) as SendigDatasetRef;
          result.parentDataset.replace(valueDes);
          break;
        case r'rootItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootSendigDatasetVariableRef),
          ) as RootSendigDatasetVariableRef;
          result.rootItem.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendigDatasetVariableRef),
          ) as SendigDatasetVariableRef;
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
  SendigDatasetVariableLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendigDatasetVariableLinksBuilder();
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

