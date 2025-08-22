//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_scenario_fields_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdashig_scenario_fields.g.dart';

/// CdashigScenarioFields
///
/// Properties:
/// * [ordinal] 
/// * [domain] 
/// * [scenario] 
/// * [links] 
@BuiltValue()
abstract class CdashigScenarioFields implements Built<CdashigScenarioFields, CdashigScenarioFieldsBuilder> {
  @BuiltValueField(wireName: r'ordinal')
  String? get ordinal;

  @BuiltValueField(wireName: r'domain')
  String? get domain;

  @BuiltValueField(wireName: r'scenario')
  String? get scenario;

  @BuiltValueField(wireName: r'_links')
  CdashigScenarioFieldsLinks? get links;

  CdashigScenarioFields._();

  factory CdashigScenarioFields([void updates(CdashigScenarioFieldsBuilder b)]) = _$CdashigScenarioFields;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashigScenarioFieldsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashigScenarioFields> get serializer => _$CdashigScenarioFieldsSerializer();
}

class _$CdashigScenarioFieldsSerializer implements PrimitiveSerializer<CdashigScenarioFields> {
  @override
  final Iterable<Type> types = const [CdashigScenarioFields, _$CdashigScenarioFields];

  @override
  final String wireName = r'CdashigScenarioFields';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashigScenarioFields object, {
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
        specifiedType: const FullType(CdashigScenarioFieldsLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashigScenarioFields object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashigScenarioFieldsBuilder result,
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
            specifiedType: const FullType(CdashigScenarioFieldsLinks),
          ) as CdashigScenarioFieldsLinks;
          result.links.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CdashigScenarioFields deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashigScenarioFieldsBuilder();
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

