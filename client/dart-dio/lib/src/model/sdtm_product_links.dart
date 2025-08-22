//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtm_product_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sdtm_product_links.g.dart';

/// SdtmProductLinks
///
/// Properties:
/// * [self] 
/// * [priorVersion] 
@BuiltValue()
abstract class SdtmProductLinks implements Built<SdtmProductLinks, SdtmProductLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmProductRef? get self;

  @BuiltValueField(wireName: r'priorVersion')
  SdtmProductRef? get priorVersion;

  SdtmProductLinks._();

  factory SdtmProductLinks([void updates(SdtmProductLinksBuilder b)]) = _$SdtmProductLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SdtmProductLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SdtmProductLinks> get serializer => _$SdtmProductLinksSerializer();
}

class _$SdtmProductLinksSerializer implements PrimitiveSerializer<SdtmProductLinks> {
  @override
  final Iterable<Type> types = const [SdtmProductLinks, _$SdtmProductLinks];

  @override
  final String wireName = r'SdtmProductLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SdtmProductLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmProductRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(SdtmProductRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SdtmProductLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SdtmProductLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmProductRef),
          ) as SdtmProductRef;
          result.self.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmProductRef),
          ) as SdtmProductRef;
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
  SdtmProductLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdtmProductLinksBuilder();
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

