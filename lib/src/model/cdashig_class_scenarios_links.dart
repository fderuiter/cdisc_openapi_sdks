//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/cdashig_scenario_ref_element.dart';
import 'package:openapi/src/model/cdashig_class_scenarios_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdashig_class_scenarios_links.g.dart';

/// CdashigClassScenariosLinks
///
/// Properties:
/// * [self] 
/// * [scenarios] 
@BuiltValue()
abstract class CdashigClassScenariosLinks implements Built<CdashigClassScenariosLinks, CdashigClassScenariosLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashigClassScenariosRef? get self;

  @BuiltValueField(wireName: r'scenarios')
  BuiltList<CdashigScenarioRefElement>? get scenarios;

  CdashigClassScenariosLinks._();

  factory CdashigClassScenariosLinks([void updates(CdashigClassScenariosLinksBuilder b)]) = _$CdashigClassScenariosLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashigClassScenariosLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashigClassScenariosLinks> get serializer => _$CdashigClassScenariosLinksSerializer();
}

class _$CdashigClassScenariosLinksSerializer implements PrimitiveSerializer<CdashigClassScenariosLinks> {
  @override
  final Iterable<Type> types = const [CdashigClassScenariosLinks, _$CdashigClassScenariosLinks];

  @override
  final String wireName = r'CdashigClassScenariosLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashigClassScenariosLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashigClassScenariosRef),
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
    CdashigClassScenariosLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashigClassScenariosLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigClassScenariosRef),
          ) as CdashigClassScenariosRef;
          result.self.replace(valueDes);
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
  CdashigClassScenariosLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashigClassScenariosLinksBuilder();
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

