//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/ct_codelist.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_ct_codelist.g.dart';

/// XmlCtCodelist
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCtCodelist implements Built<XmlCtCodelist, XmlCtCodelistBuilder> {
  @BuiltValueField(wireName: r'self')
  CtCodelist? get self;

  XmlCtCodelist._();

  factory XmlCtCodelist([void updates(XmlCtCodelistBuilder b)]) = _$XmlCtCodelist;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCtCodelistBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCtCodelist> get serializer => _$XmlCtCodelistSerializer();
}

class _$XmlCtCodelistSerializer implements PrimitiveSerializer<XmlCtCodelist> {
  @override
  final Iterable<Type> types = const [XmlCtCodelist, _$XmlCtCodelist];

  @override
  final String wireName = r'XmlCtCodelist';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCtCodelist object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CtCodelist),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCtCodelist object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCtCodelistBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CtCodelist),
          ) as CtCodelist;
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
  XmlCtCodelist deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCtCodelistBuilder();
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

