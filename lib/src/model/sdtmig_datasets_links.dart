//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtmig_datasets_ref.dart';
import 'package:openapi/src/model/sdtmig_product_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/sdtmig_dataset_ref_element.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sdtmig_datasets_links.g.dart';

/// SdtmigDatasetsLinks
///
/// Properties:
/// * [self] 
/// * [parentProduct] 
/// * [priorVersion] 
/// * [datasets] 
@BuiltValue()
abstract class SdtmigDatasetsLinks implements Built<SdtmigDatasetsLinks, SdtmigDatasetsLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmigDatasetsRef? get self;

  @BuiltValueField(wireName: r'parentProduct')
  SdtmigProductRef? get parentProduct;

  @BuiltValueField(wireName: r'priorVersion')
  SdtmigDatasetsRef? get priorVersion;

  @BuiltValueField(wireName: r'datasets')
  BuiltList<SdtmigDatasetRefElement>? get datasets;

  SdtmigDatasetsLinks._();

  factory SdtmigDatasetsLinks([void updates(SdtmigDatasetsLinksBuilder b)]) = _$SdtmigDatasetsLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SdtmigDatasetsLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SdtmigDatasetsLinks> get serializer => _$SdtmigDatasetsLinksSerializer();
}

class _$SdtmigDatasetsLinksSerializer implements PrimitiveSerializer<SdtmigDatasetsLinks> {
  @override
  final Iterable<Type> types = const [SdtmigDatasetsLinks, _$SdtmigDatasetsLinks];

  @override
  final String wireName = r'SdtmigDatasetsLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SdtmigDatasetsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmigDatasetsRef),
      );
    }
    if (object.parentProduct != null) {
      yield r'parentProduct';
      yield serializers.serialize(
        object.parentProduct,
        specifiedType: const FullType(SdtmigProductRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(SdtmigDatasetsRef),
      );
    }
    if (object.datasets != null) {
      yield r'datasets';
      yield serializers.serialize(
        object.datasets,
        specifiedType: const FullType(BuiltList, [FullType(SdtmigDatasetRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SdtmigDatasetsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SdtmigDatasetsLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigDatasetsRef),
          ) as SdtmigDatasetsRef;
          result.self.replace(valueDes);
          break;
        case r'parentProduct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigProductRef),
          ) as SdtmigProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigDatasetsRef),
          ) as SdtmigDatasetsRef;
          result.priorVersion.replace(valueDes);
          break;
        case r'datasets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SdtmigDatasetRefElement)]),
          ) as BuiltList<SdtmigDatasetRefElement>;
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
  SdtmigDatasetsLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdtmigDatasetsLinksBuilder();
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

