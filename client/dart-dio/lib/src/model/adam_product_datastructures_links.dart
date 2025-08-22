//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/adam_product_datastructures_ref.dart';
import 'package:openapi/src/model/adam_datastructure_ref_element.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'adam_product_datastructures_links.g.dart';

/// AdamProductDatastructuresLinks
///
/// Properties:
/// * [self] 
/// * [priorVersion] 
/// * [dataStructures] 
@BuiltValue()
abstract class AdamProductDatastructuresLinks implements Built<AdamProductDatastructuresLinks, AdamProductDatastructuresLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  AdamProductDatastructuresRef? get self;

  @BuiltValueField(wireName: r'priorVersion')
  AdamProductDatastructuresRef? get priorVersion;

  @BuiltValueField(wireName: r'dataStructures')
  BuiltList<AdamDatastructureRefElement>? get dataStructures;

  AdamProductDatastructuresLinks._();

  factory AdamProductDatastructuresLinks([void updates(AdamProductDatastructuresLinksBuilder b)]) = _$AdamProductDatastructuresLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdamProductDatastructuresLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdamProductDatastructuresLinks> get serializer => _$AdamProductDatastructuresLinksSerializer();
}

class _$AdamProductDatastructuresLinksSerializer implements PrimitiveSerializer<AdamProductDatastructuresLinks> {
  @override
  final Iterable<Type> types = const [AdamProductDatastructuresLinks, _$AdamProductDatastructuresLinks];

  @override
  final String wireName = r'AdamProductDatastructuresLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdamProductDatastructuresLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(AdamProductDatastructuresRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(AdamProductDatastructuresRef),
      );
    }
    if (object.dataStructures != null) {
      yield r'dataStructures';
      yield serializers.serialize(
        object.dataStructures,
        specifiedType: const FullType(BuiltList, [FullType(AdamDatastructureRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdamProductDatastructuresLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdamProductDatastructuresLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamProductDatastructuresRef),
          ) as AdamProductDatastructuresRef;
          result.self.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamProductDatastructuresRef),
          ) as AdamProductDatastructuresRef;
          result.priorVersion.replace(valueDes);
          break;
        case r'dataStructures':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AdamDatastructureRefElement)]),
          ) as BuiltList<AdamDatastructureRefElement>;
          result.dataStructures.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdamProductDatastructuresLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdamProductDatastructuresLinksBuilder();
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

