//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_class_scenarios.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_cdashig_class_scenarios.g.dart';

/// XmlCdashigClassScenarios
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCdashigClassScenarios implements Built<XmlCdashigClassScenarios, XmlCdashigClassScenariosBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashigClassScenarios? get self;

  XmlCdashigClassScenarios._();

  factory XmlCdashigClassScenarios([void updates(XmlCdashigClassScenariosBuilder b)]) = _$XmlCdashigClassScenarios;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCdashigClassScenariosBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCdashigClassScenarios> get serializer => _$XmlCdashigClassScenariosSerializer();
}

class _$XmlCdashigClassScenariosSerializer implements PrimitiveSerializer<XmlCdashigClassScenarios> {
  @override
  final Iterable<Type> types = const [XmlCdashigClassScenarios, _$XmlCdashigClassScenarios];

  @override
  final String wireName = r'XmlCdashigClassScenarios';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCdashigClassScenarios object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashigClassScenarios),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCdashigClassScenarios object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCdashigClassScenariosBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigClassScenarios),
          ) as CdashigClassScenarios;
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
  XmlCdashigClassScenarios deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCdashigClassScenariosBuilder();
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

