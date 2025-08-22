//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtm_datasets_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/sdtm_product_ref.dart';
import 'package:openapi/src/model/sdtm_dataset_ref_element.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sdtm_datasets_links.g.dart';

/// SdtmDatasetsLinks
///
/// Properties:
/// * [self] 
/// * [parentProduct] 
/// * [priorVersion] 
/// * [datasets] 
@BuiltValue()
abstract class SdtmDatasetsLinks implements Built<SdtmDatasetsLinks, SdtmDatasetsLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmDatasetsRef? get self;

  @BuiltValueField(wireName: r'parentProduct')
  SdtmProductRef? get parentProduct;

  @BuiltValueField(wireName: r'priorVersion')
  SdtmDatasetsRef? get priorVersion;

  @BuiltValueField(wireName: r'datasets')
  BuiltList<SdtmDatasetRefElement>? get datasets;

  SdtmDatasetsLinks._();

  factory SdtmDatasetsLinks([void updates(SdtmDatasetsLinksBuilder b)]) = _$SdtmDatasetsLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SdtmDatasetsLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SdtmDatasetsLinks> get serializer => _$SdtmDatasetsLinksSerializer();
}

class _$SdtmDatasetsLinksSerializer implements PrimitiveSerializer<SdtmDatasetsLinks> {
  @override
  final Iterable<Type> types = const [SdtmDatasetsLinks, _$SdtmDatasetsLinks];

  @override
  final String wireName = r'SdtmDatasetsLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SdtmDatasetsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmDatasetsRef),
      );
    }
    if (object.parentProduct != null) {
      yield r'parentProduct';
      yield serializers.serialize(
        object.parentProduct,
        specifiedType: const FullType(SdtmProductRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(SdtmDatasetsRef),
      );
    }
    if (object.datasets != null) {
      yield r'datasets';
      yield serializers.serialize(
        object.datasets,
        specifiedType: const FullType(BuiltList, [FullType(SdtmDatasetRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SdtmDatasetsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SdtmDatasetsLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmDatasetsRef),
          ) as SdtmDatasetsRef;
          result.self.replace(valueDes);
          break;
        case r'parentProduct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmProductRef),
          ) as SdtmProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmDatasetsRef),
          ) as SdtmDatasetsRef;
          result.priorVersion.replace(valueDes);
          break;
        case r'datasets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SdtmDatasetRefElement)]),
          ) as BuiltList<SdtmDatasetRefElement>;
          result.datasets.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SdtmDatasetsLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdtmDatasetsLinksBuilder();
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

