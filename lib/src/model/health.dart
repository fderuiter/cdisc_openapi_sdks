//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'health.g.dart';

/// Health
///
/// Properties:
/// * [healthy] 
/// * [ldapAuthenticationHealthy] 
/// * [ldapAuthorizationHealthy] 
/// * [databaseHealthy] 
/// * [esHealthy] 
@BuiltValue()
abstract class Health implements Built<Health, HealthBuilder> {
  @BuiltValueField(wireName: r'healthy')
  bool? get healthy;

  @BuiltValueField(wireName: r'ldapAuthenticationHealthy')
  bool? get ldapAuthenticationHealthy;

  @BuiltValueField(wireName: r'ldapAuthorizationHealthy')
  bool? get ldapAuthorizationHealthy;

  @BuiltValueField(wireName: r'databaseHealthy')
  bool? get databaseHealthy;

  @BuiltValueField(wireName: r'esHealthy')
  bool? get esHealthy;

  Health._();

  factory Health([void updates(HealthBuilder b)]) = _$Health;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HealthBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Health> get serializer => _$HealthSerializer();
}

class _$HealthSerializer implements PrimitiveSerializer<Health> {
  @override
  final Iterable<Type> types = const [Health, _$Health];

  @override
  final String wireName = r'Health';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Health object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.healthy != null) {
      yield r'healthy';
      yield serializers.serialize(
        object.healthy,
        specifiedType: const FullType(bool),
      );
    }
    if (object.ldapAuthenticationHealthy != null) {
      yield r'ldapAuthenticationHealthy';
      yield serializers.serialize(
        object.ldapAuthenticationHealthy,
        specifiedType: const FullType(bool),
      );
    }
    if (object.ldapAuthorizationHealthy != null) {
      yield r'ldapAuthorizationHealthy';
      yield serializers.serialize(
        object.ldapAuthorizationHealthy,
        specifiedType: const FullType(bool),
      );
    }
    if (object.databaseHealthy != null) {
      yield r'databaseHealthy';
      yield serializers.serialize(
        object.databaseHealthy,
        specifiedType: const FullType(bool),
      );
    }
    if (object.esHealthy != null) {
      yield r'esHealthy';
      yield serializers.serialize(
        object.esHealthy,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Health object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HealthBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'healthy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.healthy = valueDes;
          break;
        case r'ldapAuthenticationHealthy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ldapAuthenticationHealthy = valueDes;
          break;
        case r'ldapAuthorizationHealthy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ldapAuthorizationHealthy = valueDes;
          break;
        case r'databaseHealthy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.databaseHealthy = valueDes;
          break;
        case r'esHealthy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.esHealthy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Health deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HealthBuilder();
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

