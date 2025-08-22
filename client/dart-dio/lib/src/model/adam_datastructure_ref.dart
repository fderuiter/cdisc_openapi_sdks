//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'adam_datastructure_ref.g.dart';

/// AdamDatastructureRef
///
/// Properties:
/// * [href] 
/// * [title] 
/// * [type] 
@BuiltValue()
abstract class AdamDatastructureRef implements Built<AdamDatastructureRef, AdamDatastructureRefBuilder> {
  @BuiltValueField(wireName: r'href')
  String? get href;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'type')
  String? get type;

  AdamDatastructureRef._();

  factory AdamDatastructureRef([void updates(AdamDatastructureRefBuilder b)]) = _$AdamDatastructureRef;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdamDatastructureRefBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdamDatastructureRef> get serializer => _$AdamDatastructureRefSerializer();
}

class _$AdamDatastructureRefSerializer implements PrimitiveSerializer<AdamDatastructureRef> {
  @override
  final Iterable<Type> types = const [AdamDatastructureRef, _$AdamDatastructureRef];

  @override
  final String wireName = r'AdamDatastructureRef';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdamDatastructureRef object, {
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
    AdamDatastructureRef object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdamDatastructureRefBuilder result,
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
  AdamDatastructureRef deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdamDatastructureRefBuilder();
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

