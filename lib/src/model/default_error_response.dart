//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'default_error_response.g.dart';

/// DefaultErrorResponse
///
/// Properties:
/// * [statusCode] - HTTP Status Code
/// * [reasonPhrase] - HTTP Reason Phrase
/// * [userMessage] - User Error Message
/// * [adminMessage] - Admin Error Message
@BuiltValue()
abstract class DefaultErrorResponse implements Built<DefaultErrorResponse, DefaultErrorResponseBuilder> {
  /// HTTP Status Code
  @BuiltValueField(wireName: r'statusCode')
  String? get statusCode;

  /// HTTP Reason Phrase
  @BuiltValueField(wireName: r'reasonPhrase')
  String? get reasonPhrase;

  /// User Error Message
  @BuiltValueField(wireName: r'userMessage')
  String? get userMessage;

  /// Admin Error Message
  @BuiltValueField(wireName: r'adminMessage')
  String? get adminMessage;

  DefaultErrorResponse._();

  factory DefaultErrorResponse([void updates(DefaultErrorResponseBuilder b)]) = _$DefaultErrorResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DefaultErrorResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DefaultErrorResponse> get serializer => _$DefaultErrorResponseSerializer();
}

class _$DefaultErrorResponseSerializer implements PrimitiveSerializer<DefaultErrorResponse> {
  @override
  final Iterable<Type> types = const [DefaultErrorResponse, _$DefaultErrorResponse];

  @override
  final String wireName = r'DefaultErrorResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DefaultErrorResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.statusCode != null) {
      yield r'statusCode';
      yield serializers.serialize(
        object.statusCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.reasonPhrase != null) {
      yield r'reasonPhrase';
      yield serializers.serialize(
        object.reasonPhrase,
        specifiedType: const FullType(String),
      );
    }
    if (object.userMessage != null) {
      yield r'userMessage';
      yield serializers.serialize(
        object.userMessage,
        specifiedType: const FullType(String),
      );
    }
    if (object.adminMessage != null) {
      yield r'adminMessage';
      yield serializers.serialize(
        object.adminMessage,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DefaultErrorResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DefaultErrorResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'statusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.statusCode = valueDes;
          break;
        case r'reasonPhrase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reasonPhrase = valueDes;
          break;
        case r'userMessage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userMessage = valueDes;
          break;
        case r'adminMessage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.adminMessage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DefaultErrorResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DefaultErrorResponseBuilder();
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

