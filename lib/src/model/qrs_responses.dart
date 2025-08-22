//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/qrs_response_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'qrs_responses.g.dart';

/// QrsResponses
///
/// Properties:
/// * [ordinal] 
/// * [links] 
@BuiltValue()
abstract class QrsResponses implements Built<QrsResponses, QrsResponsesBuilder> {
  @BuiltValueField(wireName: r'ordinal')
  String? get ordinal;

  @BuiltValueField(wireName: r'_links')
  QrsResponseLinks? get links;

  QrsResponses._();

  factory QrsResponses([void updates(QrsResponsesBuilder b)]) = _$QrsResponses;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QrsResponsesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QrsResponses> get serializer => _$QrsResponsesSerializer();
}

class _$QrsResponsesSerializer implements PrimitiveSerializer<QrsResponses> {
  @override
  final Iterable<Type> types = const [QrsResponses, _$QrsResponses];

  @override
  final String wireName = r'QrsResponses';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QrsResponses object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ordinal != null) {
      yield r'ordinal';
      yield serializers.serialize(
        object.ordinal,
        specifiedType: const FullType(String),
      );
    }
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(QrsResponseLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QrsResponses object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QrsResponsesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ordinal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ordinal = valueDes;
          break;
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QrsResponseLinks),
          ) as QrsResponseLinks;
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
  QrsResponses deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QrsResponsesBuilder();
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

