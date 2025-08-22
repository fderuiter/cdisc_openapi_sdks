//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/root_ct_term.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_root_ct_term.g.dart';

/// XmlRootCtTerm
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlRootCtTerm implements Built<XmlRootCtTerm, XmlRootCtTermBuilder> {
  @BuiltValueField(wireName: r'self')
  RootCtTerm? get self;

  XmlRootCtTerm._();

  factory XmlRootCtTerm([void updates(XmlRootCtTermBuilder b)]) = _$XmlRootCtTerm;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlRootCtTermBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlRootCtTerm> get serializer => _$XmlRootCtTermSerializer();
}

class _$XmlRootCtTermSerializer implements PrimitiveSerializer<XmlRootCtTerm> {
  @override
  final Iterable<Type> types = const [XmlRootCtTerm, _$XmlRootCtTerm];

  @override
  final String wireName = r'XmlRootCtTerm';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlRootCtTerm object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(RootCtTerm),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlRootCtTerm object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlRootCtTermBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCtTerm),
          ) as RootCtTerm;
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
  XmlRootCtTerm deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlRootCtTermBuilder();
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

