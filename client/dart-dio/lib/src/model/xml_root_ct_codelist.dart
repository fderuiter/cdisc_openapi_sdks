//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/root_ct_codelist.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_root_ct_codelist.g.dart';

/// XmlRootCtCodelist
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlRootCtCodelist implements Built<XmlRootCtCodelist, XmlRootCtCodelistBuilder> {
  @BuiltValueField(wireName: r'self')
  RootCtCodelist? get self;

  XmlRootCtCodelist._();

  factory XmlRootCtCodelist([void updates(XmlRootCtCodelistBuilder b)]) = _$XmlRootCtCodelist;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlRootCtCodelistBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlRootCtCodelist> get serializer => _$XmlRootCtCodelistSerializer();
}

class _$XmlRootCtCodelistSerializer implements PrimitiveSerializer<XmlRootCtCodelist> {
  @override
  final Iterable<Type> types = const [XmlRootCtCodelist, _$XmlRootCtCodelist];

  @override
  final String wireName = r'XmlRootCtCodelist';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlRootCtCodelist object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(RootCtCodelist),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlRootCtCodelist object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlRootCtCodelistBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCtCodelist),
          ) as RootCtCodelist;
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
  XmlRootCtCodelist deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlRootCtCodelistBuilder();
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

