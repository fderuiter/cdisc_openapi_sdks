//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/adam_product_ref.dart';
import 'package:openapi/src/model/adam_datastructure_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'adam_datastructure_links.g.dart';

/// AdamDatastructureLinks
///
/// Properties:
/// * [self] 
/// * [parentProduct] 
/// * [priorVersion] 
@BuiltValue()
abstract class AdamDatastructureLinks implements Built<AdamDatastructureLinks, AdamDatastructureLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  AdamDatastructureRef? get self;

  @BuiltValueField(wireName: r'parentProduct')
  AdamProductRef? get parentProduct;

  @BuiltValueField(wireName: r'priorVersion')
  AdamDatastructureRef? get priorVersion;

  AdamDatastructureLinks._();

  factory AdamDatastructureLinks([void updates(AdamDatastructureLinksBuilder b)]) = _$AdamDatastructureLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdamDatastructureLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdamDatastructureLinks> get serializer => _$AdamDatastructureLinksSerializer();
}

class _$AdamDatastructureLinksSerializer implements PrimitiveSerializer<AdamDatastructureLinks> {
  @override
  final Iterable<Type> types = const [AdamDatastructureLinks, _$AdamDatastructureLinks];

  @override
  final String wireName = r'AdamDatastructureLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdamDatastructureLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(AdamDatastructureRef),
      );
    }
    if (object.parentProduct != null) {
      yield r'parentProduct';
      yield serializers.serialize(
        object.parentProduct,
        specifiedType: const FullType(AdamProductRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(AdamDatastructureRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdamDatastructureLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdamDatastructureLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamDatastructureRef),
          ) as AdamDatastructureRef;
          result.self.replace(valueDes);
          break;
        case r'parentProduct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamProductRef),
          ) as AdamProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamDatastructureRef),
          ) as AdamDatastructureRef;
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
  AdamDatastructureLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdamDatastructureLinksBuilder();
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

