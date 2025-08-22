//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'maintenance_body.g.dart';

/// MaintenanceBody
///
/// Properties:
/// * [maintenanceMode] 
/// * [maintenanceMessage] 
@BuiltValue()
abstract class MaintenanceBody implements Built<MaintenanceBody, MaintenanceBodyBuilder> {
  @BuiltValueField(wireName: r'maintenanceMode')
  bool? get maintenanceMode;

  @BuiltValueField(wireName: r'maintenanceMessage')
  String? get maintenanceMessage;

  MaintenanceBody._();

  factory MaintenanceBody([void updates(MaintenanceBodyBuilder b)]) = _$MaintenanceBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MaintenanceBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MaintenanceBody> get serializer => _$MaintenanceBodySerializer();
}

class _$MaintenanceBodySerializer implements PrimitiveSerializer<MaintenanceBody> {
  @override
  final Iterable<Type> types = const [MaintenanceBody, _$MaintenanceBody];

  @override
  final String wireName = r'MaintenanceBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MaintenanceBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.maintenanceMode != null) {
      yield r'maintenanceMode';
      yield serializers.serialize(
        object.maintenanceMode,
        specifiedType: const FullType(bool),
      );
    }
    if (object.maintenanceMessage != null) {
      yield r'maintenanceMessage';
      yield serializers.serialize(
        object.maintenanceMessage,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MaintenanceBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MaintenanceBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'maintenanceMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.maintenanceMode = valueDes;
          break;
        case r'maintenanceMessage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.maintenanceMessage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MaintenanceBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MaintenanceBodyBuilder();
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

