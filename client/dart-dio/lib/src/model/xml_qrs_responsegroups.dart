//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/qrs_responsegroups.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_qrs_responsegroups.g.dart';

/// XmlQrsResponsegroups
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlQrsResponsegroups implements Built<XmlQrsResponsegroups, XmlQrsResponsegroupsBuilder> {
  @BuiltValueField(wireName: r'self')
  QrsResponsegroups? get self;

  XmlQrsResponsegroups._();

  factory XmlQrsResponsegroups([void updates(XmlQrsResponsegroupsBuilder b)]) = _$XmlQrsResponsegroups;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlQrsResponsegroupsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlQrsResponsegroups> get serializer => _$XmlQrsResponsegroupsSerializer();
}

class _$XmlQrsResponsegroupsSerializer implements PrimitiveSerializer<XmlQrsResponsegroups> {
  @override
  final Iterable<Type> types = const [XmlQrsResponsegroups, _$XmlQrsResponsegroups];

  @override
  final String wireName = r'XmlQrsResponsegroups';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlQrsResponsegroups object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(QrsResponsegroups),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlQrsResponsegroups object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlQrsResponsegroupsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QrsResponsegroups),
          ) as QrsResponsegroups;
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
  XmlQrsResponsegroups deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlQrsResponsegroupsBuilder();
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

