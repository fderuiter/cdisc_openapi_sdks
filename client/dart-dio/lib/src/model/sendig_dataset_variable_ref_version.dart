//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sendig_dataset_variable_ref_version.g.dart';

/// SendigDatasetVariableRefVersion
///
/// Properties:
/// * [href] 
/// * [title] 
/// * [type] 
@BuiltValue()
abstract class SendigDatasetVariableRefVersion implements Built<SendigDatasetVariableRefVersion, SendigDatasetVariableRefVersionBuilder> {
  @BuiltValueField(wireName: r'href')
  String? get href;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'type')
  String? get type;

  SendigDatasetVariableRefVersion._();

  factory SendigDatasetVariableRefVersion([void updates(SendigDatasetVariableRefVersionBuilder b)]) = _$SendigDatasetVariableRefVersion;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendigDatasetVariableRefVersionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendigDatasetVariableRefVersion> get serializer => _$SendigDatasetVariableRefVersionSerializer();
}

class _$SendigDatasetVariableRefVersionSerializer implements PrimitiveSerializer<SendigDatasetVariableRefVersion> {
  @override
  final Iterable<Type> types = const [SendigDatasetVariableRefVersion, _$SendigDatasetVariableRefVersion];

  @override
  final String wireName = r'SendigDatasetVariableRefVersion';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendigDatasetVariableRefVersion object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.href != null) {
      yield r'href';
      yield serializers.serialize(
        object.href,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SendigDatasetVariableRefVersion object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendigDatasetVariableRefVersionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'href':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.href = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SendigDatasetVariableRefVersion deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendigDatasetVariableRefVersionBuilder();
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

