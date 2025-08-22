//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_scenario_links.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/cdashig_scenario_field.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdashig_scenario.g.dart';

/// CdashigScenario
///
/// Properties:
/// * [ordinal] 
/// * [domain] 
/// * [scenario] 
/// * [links] 
/// * [fields] 
@BuiltValue()
abstract class CdashigScenario implements Built<CdashigScenario, CdashigScenarioBuilder> {
  @BuiltValueField(wireName: r'ordinal')
  String? get ordinal;

  @BuiltValueField(wireName: r'domain')
  String? get domain;

  @BuiltValueField(wireName: r'scenario')
  String? get scenario;

  @BuiltValueField(wireName: r'_links')
  CdashigScenarioLinks? get links;

  @BuiltValueField(wireName: r'fields')
  BuiltList<CdashigScenarioField>? get fields;

  CdashigScenario._();

  factory CdashigScenario([void updates(CdashigScenarioBuilder b)]) = _$CdashigScenario;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashigScenarioBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashigScenario> get serializer => _$CdashigScenarioSerializer();
}

class _$CdashigScenarioSerializer implements PrimitiveSerializer<CdashigScenario> {
  @override
  final Iterable<Type> types = const [CdashigScenario, _$CdashigScenario];

  @override
  final String wireName = r'CdashigScenario';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashigScenario object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ordinal != null) {
      yield r'ordinal';
      yield serializers.serialize(
        object.ordinal,
        specifiedType: const FullType(String),
      );
    }
    if (object.domain != null) {
      yield r'domain';
      yield serializers.serialize(
        object.domain,
        specifiedType: const FullType(String),
      );
    }
    if (object.scenario != null) {
      yield r'scenario';
      yield serializers.serialize(
        object.scenario,
        specifiedType: const FullType(String),
      );
    }
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(CdashigScenarioLinks),
      );
    }
    if (object.fields != null) {
      yield r'fields';
      yield serializers.serialize(
        object.fields,
        specifiedType: const FullType(BuiltList, [FullType(CdashigScenarioField)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashigScenario object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashigScenarioBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ordinal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ordinal = valueDes;
          break;
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domain = valueDes;
          break;
        case r'scenario':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.scenario = valueDes;
          break;
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigScenarioLinks),
          ) as CdashigScenarioLinks;
          result.links.replace(valueDes);
          break;
        case r'fields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CdashigScenarioField)]),
          ) as BuiltList<CdashigScenarioField>;
          result.fields.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CdashigScenario deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashigScenarioBuilder();
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

