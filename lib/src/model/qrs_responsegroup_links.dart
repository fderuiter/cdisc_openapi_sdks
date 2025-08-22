//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/qrs_responses.dart';
import 'package:openapi/src/model/qrs_responsegroup_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'qrs_responsegroup_links.g.dart';

/// QrsResponsegroupLinks
///
/// Properties:
/// * [self] 
/// * [responses] 
@BuiltValue()
abstract class QrsResponsegroupLinks implements Built<QrsResponsegroupLinks, QrsResponsegroupLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  QrsResponsegroupRef? get self;

  @BuiltValueField(wireName: r'responses')
  BuiltList<QrsResponses>? get responses;

  QrsResponsegroupLinks._();

  factory QrsResponsegroupLinks([void updates(QrsResponsegroupLinksBuilder b)]) = _$QrsResponsegroupLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QrsResponsegroupLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QrsResponsegroupLinks> get serializer => _$QrsResponsegroupLinksSerializer();
}

class _$QrsResponsegroupLinksSerializer implements PrimitiveSerializer<QrsResponsegroupLinks> {
  @override
  final Iterable<Type> types = const [QrsResponsegroupLinks, _$QrsResponsegroupLinks];

  @override
  final String wireName = r'QrsResponsegroupLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QrsResponsegroupLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(QrsResponsegroupRef),
      );
    }
    if (object.responses != null) {
      yield r'responses';
      yield serializers.serialize(
        object.responses,
        specifiedType: const FullType(BuiltList, [FullType(QrsResponses)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QrsResponsegroupLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QrsResponsegroupLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QrsResponsegroupRef),
          ) as QrsResponsegroupRef;
          result.self.replace(valueDes);
          break;
        case r'responses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(QrsResponses)]),
          ) as BuiltList<QrsResponses>;
          result.responses.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QrsResponsegroupLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QrsResponsegroupLinksBuilder();
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

