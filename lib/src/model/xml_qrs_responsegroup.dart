//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/qrs_responsegroup.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_qrs_responsegroup.g.dart';

/// XmlQrsResponsegroup
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlQrsResponsegroup implements Built<XmlQrsResponsegroup, XmlQrsResponsegroupBuilder> {
  @BuiltValueField(wireName: r'self')
  QrsResponsegroup? get self;

  XmlQrsResponsegroup._();

  factory XmlQrsResponsegroup([void updates(XmlQrsResponsegroupBuilder b)]) = _$XmlQrsResponsegroup;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlQrsResponsegroupBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlQrsResponsegroup> get serializer => _$XmlQrsResponsegroupSerializer();
}

class _$XmlQrsResponsegroupSerializer implements PrimitiveSerializer<XmlQrsResponsegroup> {
  @override
  final Iterable<Type> types = const [XmlQrsResponsegroup, _$XmlQrsResponsegroup];

  @override
  final String wireName = r'XmlQrsResponsegroup';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlQrsResponsegroup object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(QrsResponsegroup),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlQrsResponsegroup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlQrsResponsegroupBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QrsResponsegroup),
          ) as QrsResponsegroup;
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
  XmlQrsResponsegroup deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlQrsResponsegroupBuilder();
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

