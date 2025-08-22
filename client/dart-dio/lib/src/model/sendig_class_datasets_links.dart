//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sendig_product_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/sendig_dataset_ref_element.dart';
import 'package:openapi/src/model/sendig_class_datasets_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sendig_class_datasets_links.g.dart';

/// SendigClassDatasetsLinks
///
/// Properties:
/// * [self] 
/// * [parentProduct] 
/// * [datasets] 
@BuiltValue()
abstract class SendigClassDatasetsLinks implements Built<SendigClassDatasetsLinks, SendigClassDatasetsLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  SendigClassDatasetsRef? get self;

  @BuiltValueField(wireName: r'parentProduct')
  SendigProductRef? get parentProduct;

  @BuiltValueField(wireName: r'datasets')
  BuiltList<SendigDatasetRefElement>? get datasets;

  SendigClassDatasetsLinks._();

  factory SendigClassDatasetsLinks([void updates(SendigClassDatasetsLinksBuilder b)]) = _$SendigClassDatasetsLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendigClassDatasetsLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendigClassDatasetsLinks> get serializer => _$SendigClassDatasetsLinksSerializer();
}

class _$SendigClassDatasetsLinksSerializer implements PrimitiveSerializer<SendigClassDatasetsLinks> {
  @override
  final Iterable<Type> types = const [SendigClassDatasetsLinks, _$SendigClassDatasetsLinks];

  @override
  final String wireName = r'SendigClassDatasetsLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendigClassDatasetsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SendigClassDatasetsRef),
      );
    }
    if (object.parentProduct != null) {
      yield r'parentProduct';
      yield serializers.serialize(
        object.parentProduct,
        specifiedType: const FullType(SendigProductRef),
      );
    }
    if (object.datasets != null) {
      yield r'datasets';
      yield serializers.serialize(
        object.datasets,
        specifiedType: const FullType(BuiltList, [FullType(SendigDatasetRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SendigClassDatasetsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendigClassDatasetsLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendigClassDatasetsRef),
          ) as SendigClassDatasetsRef;
          result.self.replace(valueDes);
          break;
        case r'parentProduct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendigProductRef),
          ) as SendigProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'datasets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SendigDatasetRefElement)]),
          ) as BuiltList<SendigDatasetRefElement>;
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
  SendigClassDatasetsLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendigClassDatasetsLinksBuilder();
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

