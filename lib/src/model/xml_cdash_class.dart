//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdash_class.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_cdash_class.g.dart';

/// XmlCdashClass
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCdashClass implements Built<XmlCdashClass, XmlCdashClassBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashClass? get self;

  XmlCdashClass._();

  factory XmlCdashClass([void updates(XmlCdashClassBuilder b)]) = _$XmlCdashClass;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCdashClassBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCdashClass> get serializer => _$XmlCdashClassSerializer();
}

class _$XmlCdashClassSerializer implements PrimitiveSerializer<XmlCdashClass> {
  @override
  final Iterable<Type> types = const [XmlCdashClass, _$XmlCdashClass];

  @override
  final String wireName = r'XmlCdashClass';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCdashClass object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashClass),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCdashClass object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCdashClassBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashClass),
          ) as CdashClass;
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
  XmlCdashClass deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCdashClassBuilder();
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

