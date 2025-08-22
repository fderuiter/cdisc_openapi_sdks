//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_scenario_fields.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_cdashig_scenario_fields.g.dart';

/// XmlCdashigScenarioFields
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCdashigScenarioFields implements Built<XmlCdashigScenarioFields, XmlCdashigScenarioFieldsBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashigScenarioFields? get self;

  XmlCdashigScenarioFields._();

  factory XmlCdashigScenarioFields([void updates(XmlCdashigScenarioFieldsBuilder b)]) = _$XmlCdashigScenarioFields;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCdashigScenarioFieldsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCdashigScenarioFields> get serializer => _$XmlCdashigScenarioFieldsSerializer();
}

class _$XmlCdashigScenarioFieldsSerializer implements PrimitiveSerializer<XmlCdashigScenarioFields> {
  @override
  final Iterable<Type> types = const [XmlCdashigScenarioFields, _$XmlCdashigScenarioFields];

  @override
  final String wireName = r'XmlCdashigScenarioFields';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCdashigScenarioFields object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashigScenarioFields),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCdashigScenarioFields object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCdashigScenarioFieldsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigScenarioFields),
          ) as CdashigScenarioFields;
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
  XmlCdashigScenarioFields deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCdashigScenarioFieldsBuilder();
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

