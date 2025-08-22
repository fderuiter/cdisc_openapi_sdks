//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sendig_dataset_ref.dart';
import 'package:openapi/src/model/sendig_product_ref.dart';
import 'package:openapi/src/model/sdtm_dataset_ref.dart';
import 'package:openapi/src/model/sendig_class_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sendig_dataset_links.g.dart';

/// SendigDatasetLinks
///
/// Properties:
/// * [self] 
/// * [modelDataset] 
/// * [parentProduct] 
/// * [parentClass] 
/// * [priorVersion] 
@BuiltValue()
abstract class SendigDatasetLinks implements Built<SendigDatasetLinks, SendigDatasetLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  SendigDatasetRef? get self;

  @BuiltValueField(wireName: r'modelDataset')
  SdtmDatasetRef? get modelDataset;

  @BuiltValueField(wireName: r'parentProduct')
  SendigProductRef? get parentProduct;

  @BuiltValueField(wireName: r'parentClass')
  SendigClassRef? get parentClass;

  @BuiltValueField(wireName: r'priorVersion')
  SendigDatasetRef? get priorVersion;

  SendigDatasetLinks._();

  factory SendigDatasetLinks([void updates(SendigDatasetLinksBuilder b)]) = _$SendigDatasetLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendigDatasetLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendigDatasetLinks> get serializer => _$SendigDatasetLinksSerializer();
}

class _$SendigDatasetLinksSerializer implements PrimitiveSerializer<SendigDatasetLinks> {
  @override
  final Iterable<Type> types = const [SendigDatasetLinks, _$SendigDatasetLinks];

  @override
  final String wireName = r'SendigDatasetLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendigDatasetLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SendigDatasetRef),
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
        specifiedType: const FullType(SendigDatasetRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SendigDatasetLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendigDatasetLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendigDatasetRef),
          ) as SendigDatasetRef;
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
            specifiedType: const FullType(SendigDatasetRef),
          ) as SendigDatasetRef;
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
  SendigDatasetLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendigDatasetLinksBuilder();
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

