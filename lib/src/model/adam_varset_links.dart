//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/adam_product_ref.dart';
import 'package:openapi/src/model/adam_datastructure_ref.dart';
import 'package:openapi/src/model/adam_varset_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'adam_varset_links.g.dart';

/// AdamVarsetLinks
///
/// Properties:
/// * [self] 
/// * [parentProduct] 
/// * [parentDatastructure] 
/// * [priorVersion] 
@BuiltValue()
abstract class AdamVarsetLinks implements Built<AdamVarsetLinks, AdamVarsetLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  AdamVarsetRef? get self;

  @BuiltValueField(wireName: r'parentProduct')
  AdamProductRef? get parentProduct;

  @BuiltValueField(wireName: r'parentDatastructure')
  AdamDatastructureRef? get parentDatastructure;

  @BuiltValueField(wireName: r'priorVersion')
  AdamVarsetRef? get priorVersion;

  AdamVarsetLinks._();

  factory AdamVarsetLinks([void updates(AdamVarsetLinksBuilder b)]) = _$AdamVarsetLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdamVarsetLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdamVarsetLinks> get serializer => _$AdamVarsetLinksSerializer();
}

class _$AdamVarsetLinksSerializer implements PrimitiveSerializer<AdamVarsetLinks> {
  @override
  final Iterable<Type> types = const [AdamVarsetLinks, _$AdamVarsetLinks];

  @override
  final String wireName = r'AdamVarsetLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdamVarsetLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(AdamVarsetRef),
      );
    }
    if (object.parentProduct != null) {
      yield r'parentProduct';
      yield serializers.serialize(
        object.parentProduct,
        specifiedType: const FullType(AdamProductRef),
      );
    }
    if (object.parentDatastructure != null) {
      yield r'parentDatastructure';
      yield serializers.serialize(
        object.parentDatastructure,
        specifiedType: const FullType(AdamDatastructureRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(AdamVarsetRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdamVarsetLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdamVarsetLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamVarsetRef),
          ) as AdamVarsetRef;
          result.self.replace(valueDes);
          break;
        case r'parentProduct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamProductRef),
          ) as AdamProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'parentDatastructure':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamDatastructureRef),
          ) as AdamDatastructureRef;
          result.parentDatastructure.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamVarsetRef),
          ) as AdamVarsetRef;
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
  AdamVarsetLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdamVarsetLinksBuilder();
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

