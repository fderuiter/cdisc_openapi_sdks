//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_product_scenarios.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_cdashig_product_scenarios.g.dart';

/// XmlCdashigProductScenarios
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCdashigProductScenarios implements Built<XmlCdashigProductScenarios, XmlCdashigProductScenariosBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashigProductScenarios? get self;

  XmlCdashigProductScenarios._();

  factory XmlCdashigProductScenarios([void updates(XmlCdashigProductScenariosBuilder b)]) = _$XmlCdashigProductScenarios;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCdashigProductScenariosBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCdashigProductScenarios> get serializer => _$XmlCdashigProductScenariosSerializer();
}

class _$XmlCdashigProductScenariosSerializer implements PrimitiveSerializer<XmlCdashigProductScenarios> {
  @override
  final Iterable<Type> types = const [XmlCdashigProductScenarios, _$XmlCdashigProductScenarios];

  @override
  final String wireName = r'XmlCdashigProductScenarios';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCdashigProductScenarios object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashigProductScenarios),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCdashigProductScenarios object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCdashigProductScenariosBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigProductScenarios),
          ) as CdashigProductScenarios;
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
  XmlCdashigProductScenarios deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCdashigProductScenariosBuilder();
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

