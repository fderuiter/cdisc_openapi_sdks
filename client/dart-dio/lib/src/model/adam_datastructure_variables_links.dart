//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/adam_product_ref.dart';
import 'package:openapi/src/model/adam_variable_ref_element.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/adam_datastructure_variables_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'adam_datastructure_variables_links.g.dart';

/// AdamDatastructureVariablesLinks
///
/// Properties:
/// * [self] 
/// * [parentProduct] 
/// * [priorVersion] 
/// * [analysisVariables] 
@BuiltValue()
abstract class AdamDatastructureVariablesLinks implements Built<AdamDatastructureVariablesLinks, AdamDatastructureVariablesLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  AdamDatastructureVariablesRef? get self;

  @BuiltValueField(wireName: r'parentProduct')
  AdamProductRef? get parentProduct;

  @BuiltValueField(wireName: r'priorVersion')
  AdamDatastructureVariablesRef? get priorVersion;

  @BuiltValueField(wireName: r'analysisVariables')
  BuiltList<AdamVariableRefElement>? get analysisVariables;

  AdamDatastructureVariablesLinks._();

  factory AdamDatastructureVariablesLinks([void updates(AdamDatastructureVariablesLinksBuilder b)]) = _$AdamDatastructureVariablesLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdamDatastructureVariablesLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdamDatastructureVariablesLinks> get serializer => _$AdamDatastructureVariablesLinksSerializer();
}

class _$AdamDatastructureVariablesLinksSerializer implements PrimitiveSerializer<AdamDatastructureVariablesLinks> {
  @override
  final Iterable<Type> types = const [AdamDatastructureVariablesLinks, _$AdamDatastructureVariablesLinks];

  @override
  final String wireName = r'AdamDatastructureVariablesLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdamDatastructureVariablesLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(AdamDatastructureVariablesRef),
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
        specifiedType: const FullType(AdamDatastructureVariablesRef),
      );
    }
    if (object.analysisVariables != null) {
      yield r'analysisVariables';
      yield serializers.serialize(
        object.analysisVariables,
        specifiedType: const FullType(BuiltList, [FullType(AdamVariableRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdamDatastructureVariablesLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdamDatastructureVariablesLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamDatastructureVariablesRef),
          ) as AdamDatastructureVariablesRef;
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
            specifiedType: const FullType(AdamDatastructureVariablesRef),
          ) as AdamDatastructureVariablesRef;
          result.priorVersion.replace(valueDes);
          break;
        case r'analysisVariables':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AdamVariableRefElement)]),
          ) as BuiltList<AdamVariableRefElement>;
          result.analysisVariables.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdamDatastructureVariablesLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdamDatastructureVariablesLinksBuilder();
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

