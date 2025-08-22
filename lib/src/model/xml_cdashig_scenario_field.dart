//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_scenario_field.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_cdashig_scenario_field.g.dart';

/// XmlCdashigScenarioField
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCdashigScenarioField implements Built<XmlCdashigScenarioField, XmlCdashigScenarioFieldBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashigScenarioField? get self;

  XmlCdashigScenarioField._();

  factory XmlCdashigScenarioField([void updates(XmlCdashigScenarioFieldBuilder b)]) = _$XmlCdashigScenarioField;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCdashigScenarioFieldBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCdashigScenarioField> get serializer => _$XmlCdashigScenarioFieldSerializer();
}

class _$XmlCdashigScenarioFieldSerializer implements PrimitiveSerializer<XmlCdashigScenarioField> {
  @override
  final Iterable<Type> types = const [XmlCdashigScenarioField, _$XmlCdashigScenarioField];

  @override
  final String wireName = r'XmlCdashigScenarioField';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCdashigScenarioField object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashigScenarioField),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCdashigScenarioField object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCdashigScenarioFieldBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigScenarioField),
          ) as CdashigScenarioField;
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
  XmlCdashigScenarioField deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCdashigScenarioFieldBuilder();
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

