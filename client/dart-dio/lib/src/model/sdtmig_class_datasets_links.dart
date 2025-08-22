//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtmig_product_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/sdtmig_class_datasets_ref.dart';
import 'package:openapi/src/model/sdtmig_dataset_ref_element.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sdtmig_class_datasets_links.g.dart';

/// SdtmigClassDatasetsLinks
///
/// Properties:
/// * [self] 
/// * [parentProduct] 
/// * [priorVersion] 
/// * [datasets] 
@BuiltValue()
abstract class SdtmigClassDatasetsLinks implements Built<SdtmigClassDatasetsLinks, SdtmigClassDatasetsLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmigClassDatasetsRef? get self;

  @BuiltValueField(wireName: r'parentProduct')
  SdtmigProductRef? get parentProduct;

  @BuiltValueField(wireName: r'priorVersion')
  SdtmigClassDatasetsRef? get priorVersion;

  @BuiltValueField(wireName: r'datasets')
  BuiltList<SdtmigDatasetRefElement>? get datasets;

  SdtmigClassDatasetsLinks._();

  factory SdtmigClassDatasetsLinks([void updates(SdtmigClassDatasetsLinksBuilder b)]) = _$SdtmigClassDatasetsLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SdtmigClassDatasetsLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SdtmigClassDatasetsLinks> get serializer => _$SdtmigClassDatasetsLinksSerializer();
}

class _$SdtmigClassDatasetsLinksSerializer implements PrimitiveSerializer<SdtmigClassDatasetsLinks> {
  @override
  final Iterable<Type> types = const [SdtmigClassDatasetsLinks, _$SdtmigClassDatasetsLinks];

  @override
  final String wireName = r'SdtmigClassDatasetsLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SdtmigClassDatasetsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmigClassDatasetsRef),
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
        specifiedType: const FullType(SdtmigClassDatasetsRef),
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
    SdtmigClassDatasetsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SdtmigClassDatasetsLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigClassDatasetsRef),
          ) as SdtmigClassDatasetsRef;
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
            specifiedType: const FullType(SdtmigClassDatasetsRef),
          ) as SdtmigClassDatasetsRef;
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
  SdtmigClassDatasetsLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdtmigClassDatasetsLinksBuilder();
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

