//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_class.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_cdashig_class.g.dart';

/// XmlCdashigClass
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCdashigClass implements Built<XmlCdashigClass, XmlCdashigClassBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashigClass? get self;

  XmlCdashigClass._();

  factory XmlCdashigClass([void updates(XmlCdashigClassBuilder b)]) = _$XmlCdashigClass;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCdashigClassBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCdashigClass> get serializer => _$XmlCdashigClassSerializer();
}

class _$XmlCdashigClassSerializer implements PrimitiveSerializer<XmlCdashigClass> {
  @override
  final Iterable<Type> types = const [XmlCdashigClass, _$XmlCdashigClass];

  @override
  final String wireName = r'XmlCdashigClass';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCdashigClass object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashigClass),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCdashigClass object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCdashigClassBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigClass),
          ) as CdashigClass;
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
  XmlCdashigClass deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCdashigClassBuilder();
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

