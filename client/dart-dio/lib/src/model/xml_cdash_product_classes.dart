//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdash_product_classes.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_cdash_product_classes.g.dart';

/// XmlCdashProductClasses
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCdashProductClasses implements Built<XmlCdashProductClasses, XmlCdashProductClassesBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashProductClasses? get self;

  XmlCdashProductClasses._();

  factory XmlCdashProductClasses([void updates(XmlCdashProductClassesBuilder b)]) = _$XmlCdashProductClasses;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCdashProductClassesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCdashProductClasses> get serializer => _$XmlCdashProductClassesSerializer();
}

class _$XmlCdashProductClassesSerializer implements PrimitiveSerializer<XmlCdashProductClasses> {
  @override
  final Iterable<Type> types = const [XmlCdashProductClasses, _$XmlCdashProductClasses];

  @override
  final String wireName = r'XmlCdashProductClasses';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCdashProductClasses object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashProductClasses),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCdashProductClasses object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCdashProductClassesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashProductClasses),
          ) as CdashProductClasses;
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
  XmlCdashProductClasses deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCdashProductClassesBuilder();
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

