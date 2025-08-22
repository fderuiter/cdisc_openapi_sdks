//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdash_class_field.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_cdash_class_field.g.dart';

/// XmlCdashClassField
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCdashClassField implements Built<XmlCdashClassField, XmlCdashClassFieldBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashClassField? get self;

  XmlCdashClassField._();

  factory XmlCdashClassField([void updates(XmlCdashClassFieldBuilder b)]) = _$XmlCdashClassField;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCdashClassFieldBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCdashClassField> get serializer => _$XmlCdashClassFieldSerializer();
}

class _$XmlCdashClassFieldSerializer implements PrimitiveSerializer<XmlCdashClassField> {
  @override
  final Iterable<Type> types = const [XmlCdashClassField, _$XmlCdashClassField];

  @override
  final String wireName = r'XmlCdashClassField';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCdashClassField object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashClassField),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCdashClassField object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCdashClassFieldBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashClassField),
          ) as CdashClassField;
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
  XmlCdashClassField deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCdashClassFieldBuilder();
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

