//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_product_classes.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_cdashig_product_classes.g.dart';

/// XmlCdashigProductClasses
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCdashigProductClasses implements Built<XmlCdashigProductClasses, XmlCdashigProductClassesBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashigProductClasses? get self;

  XmlCdashigProductClasses._();

  factory XmlCdashigProductClasses([void updates(XmlCdashigProductClassesBuilder b)]) = _$XmlCdashigProductClasses;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCdashigProductClassesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCdashigProductClasses> get serializer => _$XmlCdashigProductClassesSerializer();
}

class _$XmlCdashigProductClassesSerializer implements PrimitiveSerializer<XmlCdashigProductClasses> {
  @override
  final Iterable<Type> types = const [XmlCdashigProductClasses, _$XmlCdashigProductClasses];

  @override
  final String wireName = r'XmlCdashigProductClasses';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCdashigProductClasses object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashigProductClasses),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCdashigProductClasses object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCdashigProductClassesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigProductClasses),
          ) as CdashigProductClasses;
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
  XmlCdashigProductClasses deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCdashigProductClassesBuilder();
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

