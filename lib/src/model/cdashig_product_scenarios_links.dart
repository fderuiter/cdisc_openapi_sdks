//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_product_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/cdashig_product_scenarios_ref.dart';
import 'package:openapi/src/model/cdashig_scenario_ref_element.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdashig_product_scenarios_links.g.dart';

/// CdashigProductScenariosLinks
///
/// Properties:
/// * [self] 
/// * [parentProduct] 
/// * [scenarios] 
@BuiltValue()
abstract class CdashigProductScenariosLinks implements Built<CdashigProductScenariosLinks, CdashigProductScenariosLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashigProductScenariosRef? get self;

  @BuiltValueField(wireName: r'parentProduct')
  CdashigProductRef? get parentProduct;

  @BuiltValueField(wireName: r'scenarios')
  BuiltList<CdashigScenarioRefElement>? get scenarios;

  CdashigProductScenariosLinks._();

  factory CdashigProductScenariosLinks([void updates(CdashigProductScenariosLinksBuilder b)]) = _$CdashigProductScenariosLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashigProductScenariosLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashigProductScenariosLinks> get serializer => _$CdashigProductScenariosLinksSerializer();
}

class _$CdashigProductScenariosLinksSerializer implements PrimitiveSerializer<CdashigProductScenariosLinks> {
  @override
  final Iterable<Type> types = const [CdashigProductScenariosLinks, _$CdashigProductScenariosLinks];

  @override
  final String wireName = r'CdashigProductScenariosLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashigProductScenariosLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashigProductScenariosRef),
      );
    }
    if (object.parentProduct != null) {
      yield r'parentProduct';
      yield serializers.serialize(
        object.parentProduct,
        specifiedType: const FullType(CdashigProductRef),
      );
    }
    if (object.scenarios != null) {
      yield r'scenarios';
      yield serializers.serialize(
        object.scenarios,
        specifiedType: const FullType(BuiltList, [FullType(CdashigScenarioRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashigProductScenariosLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashigProductScenariosLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigProductScenariosRef),
          ) as CdashigProductScenariosRef;
          result.self.replace(valueDes);
          break;
        case r'parentProduct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigProductRef),
          ) as CdashigProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'scenarios':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CdashigScenarioRefElement)]),
          ) as BuiltList<CdashigScenarioRefElement>;
          result.scenarios.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CdashigProductScenariosLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashigProductScenariosLinksBuilder();
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

