//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/qrs_responsegroup_ref_element.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/qrs_responsegroups_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'qrs_responsegroups_links.g.dart';

/// QrsResponsegroupsLinks
///
/// Properties:
/// * [self] 
/// * [responsegroups] 
@BuiltValue()
abstract class QrsResponsegroupsLinks implements Built<QrsResponsegroupsLinks, QrsResponsegroupsLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  QrsResponsegroupsRef? get self;

  @BuiltValueField(wireName: r'responsegroups')
  BuiltList<QrsResponsegroupRefElement>? get responsegroups;

  QrsResponsegroupsLinks._();

  factory QrsResponsegroupsLinks([void updates(QrsResponsegroupsLinksBuilder b)]) = _$QrsResponsegroupsLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QrsResponsegroupsLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QrsResponsegroupsLinks> get serializer => _$QrsResponsegroupsLinksSerializer();
}

class _$QrsResponsegroupsLinksSerializer implements PrimitiveSerializer<QrsResponsegroupsLinks> {
  @override
  final Iterable<Type> types = const [QrsResponsegroupsLinks, _$QrsResponsegroupsLinks];

  @override
  final String wireName = r'QrsResponsegroupsLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QrsResponsegroupsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(QrsResponsegroupsRef),
      );
    }
    if (object.responsegroups != null) {
      yield r'responsegroups';
      yield serializers.serialize(
        object.responsegroups,
        specifiedType: const FullType(BuiltList, [FullType(QrsResponsegroupRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QrsResponsegroupsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QrsResponsegroupsLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QrsResponsegroupsRef),
          ) as QrsResponsegroupsRef;
          result.self.replace(valueDes);
          break;
        case r'responsegroups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(QrsResponsegroupRefElement)]),
          ) as BuiltList<QrsResponsegroupRefElement>;
          result.responsegroups.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QrsResponsegroupsLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QrsResponsegroupsLinksBuilder();
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

