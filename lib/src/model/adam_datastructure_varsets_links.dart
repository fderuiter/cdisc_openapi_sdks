//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/adam_datastructure_varsets_ref.dart';
import 'package:openapi/src/model/adam_product_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/adam_varset_ref_element.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'adam_datastructure_varsets_links.g.dart';

/// AdamDatastructureVarsetsLinks
///
/// Properties:
/// * [self] 
/// * [parentProduct] 
/// * [priorVersion] 
/// * [analysisVariableSets] 
@BuiltValue()
abstract class AdamDatastructureVarsetsLinks implements Built<AdamDatastructureVarsetsLinks, AdamDatastructureVarsetsLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  AdamDatastructureVarsetsRef? get self;

  @BuiltValueField(wireName: r'parentProduct')
  AdamProductRef? get parentProduct;

  @BuiltValueField(wireName: r'priorVersion')
  AdamDatastructureVarsetsRef? get priorVersion;

  @BuiltValueField(wireName: r'analysisVariableSets')
  BuiltList<AdamVarsetRefElement>? get analysisVariableSets;

  AdamDatastructureVarsetsLinks._();

  factory AdamDatastructureVarsetsLinks([void updates(AdamDatastructureVarsetsLinksBuilder b)]) = _$AdamDatastructureVarsetsLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdamDatastructureVarsetsLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdamDatastructureVarsetsLinks> get serializer => _$AdamDatastructureVarsetsLinksSerializer();
}

class _$AdamDatastructureVarsetsLinksSerializer implements PrimitiveSerializer<AdamDatastructureVarsetsLinks> {
  @override
  final Iterable<Type> types = const [AdamDatastructureVarsetsLinks, _$AdamDatastructureVarsetsLinks];

  @override
  final String wireName = r'AdamDatastructureVarsetsLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdamDatastructureVarsetsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(AdamDatastructureVarsetsRef),
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
        specifiedType: const FullType(AdamDatastructureVarsetsRef),
      );
    }
    if (object.analysisVariableSets != null) {
      yield r'analysisVariableSets';
      yield serializers.serialize(
        object.analysisVariableSets,
        specifiedType: const FullType(BuiltList, [FullType(AdamVarsetRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdamDatastructureVarsetsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdamDatastructureVarsetsLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamDatastructureVarsetsRef),
          ) as AdamDatastructureVarsetsRef;
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
            specifiedType: const FullType(AdamDatastructureVarsetsRef),
          ) as AdamDatastructureVarsetsRef;
          result.priorVersion.replace(valueDes);
          break;
        case r'analysisVariableSets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AdamVarsetRefElement)]),
          ) as BuiltList<AdamVarsetRefElement>;
          result.analysisVariableSets.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdamDatastructureVarsetsLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdamDatastructureVarsetsLinksBuilder();
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

