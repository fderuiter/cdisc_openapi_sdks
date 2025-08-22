//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/root_cdashig_scenario_field_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'root_cdashig_scenario_field.g.dart';

/// RootCdashigScenarioField
///
/// Properties:
/// * [links] 
@BuiltValue()
abstract class RootCdashigScenarioField implements Built<RootCdashigScenarioField, RootCdashigScenarioFieldBuilder> {
  @BuiltValueField(wireName: r'_links')
  RootCdashigScenarioFieldLinks? get links;

  RootCdashigScenarioField._();

  factory RootCdashigScenarioField([void updates(RootCdashigScenarioFieldBuilder b)]) = _$RootCdashigScenarioField;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RootCdashigScenarioFieldBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RootCdashigScenarioField> get serializer => _$RootCdashigScenarioFieldSerializer();
}

class _$RootCdashigScenarioFieldSerializer implements PrimitiveSerializer<RootCdashigScenarioField> {
  @override
  final Iterable<Type> types = const [RootCdashigScenarioField, _$RootCdashigScenarioField];

  @override
  final String wireName = r'RootCdashigScenarioField';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RootCdashigScenarioField object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(RootCdashigScenarioFieldLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RootCdashigScenarioField object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RootCdashigScenarioFieldBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCdashigScenarioFieldLinks),
          ) as RootCdashigScenarioFieldLinks;
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
  RootCdashigScenarioField deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RootCdashigScenarioFieldBuilder();
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

