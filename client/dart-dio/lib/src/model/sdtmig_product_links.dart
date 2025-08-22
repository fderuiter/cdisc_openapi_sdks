//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtmig_product_ref.dart';
import 'package:openapi/src/model/sdtm_product_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sdtmig_product_links.g.dart';

/// SdtmigProductLinks
///
/// Properties:
/// * [self] 
/// * [model] 
/// * [priorVersion] 
@BuiltValue()
abstract class SdtmigProductLinks implements Built<SdtmigProductLinks, SdtmigProductLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmigProductRef? get self;

  @BuiltValueField(wireName: r'model')
  SdtmProductRef? get model;

  @BuiltValueField(wireName: r'priorVersion')
  SdtmigProductRef? get priorVersion;

  SdtmigProductLinks._();

  factory SdtmigProductLinks([void updates(SdtmigProductLinksBuilder b)]) = _$SdtmigProductLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SdtmigProductLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SdtmigProductLinks> get serializer => _$SdtmigProductLinksSerializer();
}

class _$SdtmigProductLinksSerializer implements PrimitiveSerializer<SdtmigProductLinks> {
  @override
  final Iterable<Type> types = const [SdtmigProductLinks, _$SdtmigProductLinks];

  @override
  final String wireName = r'SdtmigProductLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SdtmigProductLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmigProductRef),
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
        specifiedType: const FullType(SdtmigProductRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SdtmigProductLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SdtmigProductLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigProductRef),
          ) as SdtmigProductRef;
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
            specifiedType: const FullType(SdtmigProductRef),
          ) as SdtmigProductRef;
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
  SdtmigProductLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdtmigProductLinksBuilder();
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

