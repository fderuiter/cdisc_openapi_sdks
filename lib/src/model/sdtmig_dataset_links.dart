//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtmig_dataset_ref.dart';
import 'package:openapi/src/model/sdtmig_product_ref.dart';
import 'package:openapi/src/model/sdtm_dataset_ref.dart';
import 'package:openapi/src/model/sdtmig_class_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sdtmig_dataset_links.g.dart';

/// SdtmigDatasetLinks
///
/// Properties:
/// * [self] 
/// * [modelDataset] 
/// * [parentProduct] 
/// * [parentClass] 
/// * [priorVersion] 
@BuiltValue()
abstract class SdtmigDatasetLinks implements Built<SdtmigDatasetLinks, SdtmigDatasetLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmigDatasetRef? get self;

  @BuiltValueField(wireName: r'modelDataset')
  SdtmDatasetRef? get modelDataset;

  @BuiltValueField(wireName: r'parentProduct')
  SdtmigProductRef? get parentProduct;

  @BuiltValueField(wireName: r'parentClass')
  SdtmigClassRef? get parentClass;

  @BuiltValueField(wireName: r'priorVersion')
  SdtmigDatasetRef? get priorVersion;

  SdtmigDatasetLinks._();

  factory SdtmigDatasetLinks([void updates(SdtmigDatasetLinksBuilder b)]) = _$SdtmigDatasetLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SdtmigDatasetLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SdtmigDatasetLinks> get serializer => _$SdtmigDatasetLinksSerializer();
}

class _$SdtmigDatasetLinksSerializer implements PrimitiveSerializer<SdtmigDatasetLinks> {
  @override
  final Iterable<Type> types = const [SdtmigDatasetLinks, _$SdtmigDatasetLinks];

  @override
  final String wireName = r'SdtmigDatasetLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SdtmigDatasetLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmigDatasetRef),
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
        specifiedType: const FullType(SdtmigDatasetRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SdtmigDatasetLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SdtmigDatasetLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigDatasetRef),
          ) as SdtmigDatasetRef;
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
            specifiedType: const FullType(SdtmigDatasetRef),
          ) as SdtmigDatasetRef;
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
  SdtmigDatasetLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdtmigDatasetLinksBuilder();
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

