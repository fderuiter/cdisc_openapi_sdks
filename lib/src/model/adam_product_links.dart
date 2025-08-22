//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/adam_product_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'adam_product_links.g.dart';

/// AdamProductLinks
///
/// Properties:
/// * [self] 
/// * [model] 
/// * [priorVersion] 
@BuiltValue()
abstract class AdamProductLinks implements Built<AdamProductLinks, AdamProductLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  AdamProductRef? get self;

  @BuiltValueField(wireName: r'model')
  AdamProductRef? get model;

  @BuiltValueField(wireName: r'priorVersion')
  AdamProductRef? get priorVersion;

  AdamProductLinks._();

  factory AdamProductLinks([void updates(AdamProductLinksBuilder b)]) = _$AdamProductLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdamProductLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdamProductLinks> get serializer => _$AdamProductLinksSerializer();
}

class _$AdamProductLinksSerializer implements PrimitiveSerializer<AdamProductLinks> {
  @override
  final Iterable<Type> types = const [AdamProductLinks, _$AdamProductLinks];

  @override
  final String wireName = r'AdamProductLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdamProductLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(AdamProductRef),
      );
    }
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType(AdamProductRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(AdamProductRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdamProductLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdamProductLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamProductRef),
          ) as AdamProductRef;
          result.self.replace(valueDes);
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamProductRef),
          ) as AdamProductRef;
          result.model.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamProductRef),
          ) as AdamProductRef;
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
  AdamProductLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdamProductLinksBuilder();
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

