//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdash_product_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdash_product_links.g.dart';

/// CdashProductLinks
///
/// Properties:
/// * [self] 
/// * [priorVersion] 
@BuiltValue()
abstract class CdashProductLinks implements Built<CdashProductLinks, CdashProductLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashProductRef? get self;

  @BuiltValueField(wireName: r'priorVersion')
  CdashProductRef? get priorVersion;

  CdashProductLinks._();

  factory CdashProductLinks([void updates(CdashProductLinksBuilder b)]) = _$CdashProductLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashProductLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashProductLinks> get serializer => _$CdashProductLinksSerializer();
}

class _$CdashProductLinksSerializer implements PrimitiveSerializer<CdashProductLinks> {
  @override
  final Iterable<Type> types = const [CdashProductLinks, _$CdashProductLinks];

  @override
  final String wireName = r'CdashProductLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashProductLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashProductRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(CdashProductRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashProductLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashProductLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashProductRef),
          ) as CdashProductRef;
          result.self.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashProductRef),
          ) as CdashProductRef;
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
  CdashProductLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashProductLinksBuilder();
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

