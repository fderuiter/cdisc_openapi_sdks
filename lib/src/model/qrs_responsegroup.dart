//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/qrs_responsegroup_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'qrs_responsegroup.g.dart';

/// QrsResponsegroup
///
/// Properties:
/// * [label] 
/// * [links] 
@BuiltValue()
abstract class QrsResponsegroup implements Built<QrsResponsegroup, QrsResponsegroupBuilder> {
  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'_links')
  QrsResponsegroupLinks? get links;

  QrsResponsegroup._();

  factory QrsResponsegroup([void updates(QrsResponsegroupBuilder b)]) = _$QrsResponsegroup;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QrsResponsegroupBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QrsResponsegroup> get serializer => _$QrsResponsegroupSerializer();
}

class _$QrsResponsegroupSerializer implements PrimitiveSerializer<QrsResponsegroup> {
  @override
  final Iterable<Type> types = const [QrsResponsegroup, _$QrsResponsegroup];

  @override
  final String wireName = r'QrsResponsegroup';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QrsResponsegroup object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(QrsResponsegroupLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QrsResponsegroup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QrsResponsegroupBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QrsResponsegroupLinks),
          ) as QrsResponsegroupLinks;
          result.links.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QrsResponsegroup deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QrsResponsegroupBuilder();
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

