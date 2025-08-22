//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_scenario.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_cdashig_scenario.g.dart';

/// XmlCdashigScenario
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCdashigScenario implements Built<XmlCdashigScenario, XmlCdashigScenarioBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashigScenario? get self;

  XmlCdashigScenario._();

  factory XmlCdashigScenario([void updates(XmlCdashigScenarioBuilder b)]) = _$XmlCdashigScenario;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCdashigScenarioBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCdashigScenario> get serializer => _$XmlCdashigScenarioSerializer();
}

class _$XmlCdashigScenarioSerializer implements PrimitiveSerializer<XmlCdashigScenario> {
  @override
  final Iterable<Type> types = const [XmlCdashigScenario, _$XmlCdashigScenario];

  @override
  final String wireName = r'XmlCdashigScenario';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCdashigScenario object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashigScenario),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCdashigScenario object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCdashigScenarioBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigScenario),
          ) as CdashigScenario;
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
  XmlCdashigScenario deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCdashigScenarioBuilder();
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

