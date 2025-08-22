//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_product_ref.dart';
import 'package:openapi/src/model/cdash_product_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdashig_product_links.g.dart';

/// CdashigProductLinks
///
/// Properties:
/// * [self] 
/// * [model] 
/// * [priorVersion] 
@BuiltValue()
abstract class CdashigProductLinks implements Built<CdashigProductLinks, CdashigProductLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashigProductRef? get self;

  @BuiltValueField(wireName: r'model')
  CdashProductRef? get model;

  @BuiltValueField(wireName: r'priorVersion')
  CdashigProductRef? get priorVersion;

  CdashigProductLinks._();

  factory CdashigProductLinks([void updates(CdashigProductLinksBuilder b)]) = _$CdashigProductLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashigProductLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashigProductLinks> get serializer => _$CdashigProductLinksSerializer();
}

class _$CdashigProductLinksSerializer implements PrimitiveSerializer<CdashigProductLinks> {
  @override
  final Iterable<Type> types = const [CdashigProductLinks, _$CdashigProductLinks];

  @override
  final String wireName = r'CdashigProductLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashigProductLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashigProductRef),
      );
    }
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType(CdashProductRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(CdashigProductRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashigProductLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashigProductLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigProductRef),
          ) as CdashigProductRef;
          result.self.replace(valueDes);
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashProductRef),
          ) as CdashProductRef;
          result.model.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigProductRef),
          ) as CdashigProductRef;
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
  CdashigProductLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashigProductLinksBuilder();
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

