//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sendig_product_ref.dart';
import 'package:openapi/src/model/sdtm_product_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sendig_product_links.g.dart';

/// SendigProductLinks
///
/// Properties:
/// * [self] 
/// * [model] 
/// * [priorVersion] 
@BuiltValue()
abstract class SendigProductLinks implements Built<SendigProductLinks, SendigProductLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  SendigProductRef? get self;

  @BuiltValueField(wireName: r'model')
  SdtmProductRef? get model;

  @BuiltValueField(wireName: r'priorVersion')
  SendigProductRef? get priorVersion;

  SendigProductLinks._();

  factory SendigProductLinks([void updates(SendigProductLinksBuilder b)]) = _$SendigProductLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendigProductLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendigProductLinks> get serializer => _$SendigProductLinksSerializer();
}

class _$SendigProductLinksSerializer implements PrimitiveSerializer<SendigProductLinks> {
  @override
  final Iterable<Type> types = const [SendigProductLinks, _$SendigProductLinks];

  @override
  final String wireName = r'SendigProductLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendigProductLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SendigProductRef),
      );
    }
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType(SdtmProductRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(SendigProductRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SendigProductLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendigProductLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendigProductRef),
          ) as SendigProductRef;
          result.self.replace(valueDes);
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmProductRef),
          ) as SdtmProductRef;
          result.model.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendigProductRef),
          ) as SendigProductRef;
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
  SendigProductLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendigProductLinksBuilder();
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

