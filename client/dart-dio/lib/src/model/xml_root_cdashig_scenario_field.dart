//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/root_cdashig_scenario_field.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_root_cdashig_scenario_field.g.dart';

/// XmlRootCdashigScenarioField
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlRootCdashigScenarioField implements Built<XmlRootCdashigScenarioField, XmlRootCdashigScenarioFieldBuilder> {
  @BuiltValueField(wireName: r'self')
  RootCdashigScenarioField? get self;

  XmlRootCdashigScenarioField._();

  factory XmlRootCdashigScenarioField([void updates(XmlRootCdashigScenarioFieldBuilder b)]) = _$XmlRootCdashigScenarioField;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlRootCdashigScenarioFieldBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlRootCdashigScenarioField> get serializer => _$XmlRootCdashigScenarioFieldSerializer();
}

class _$XmlRootCdashigScenarioFieldSerializer implements PrimitiveSerializer<XmlRootCdashigScenarioField> {
  @override
  final Iterable<Type> types = const [XmlRootCdashigScenarioField, _$XmlRootCdashigScenarioField];

  @override
  final String wireName = r'XmlRootCdashigScenarioField';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlRootCdashigScenarioField object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(RootCdashigScenarioField),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlRootCdashigScenarioField object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlRootCdashigScenarioFieldBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCdashigScenarioField),
          ) as RootCdashigScenarioField;
          result.self.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  XmlRootCdashigScenarioField deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlRootCdashigScenarioFieldBuilder();
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

