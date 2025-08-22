//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'default_search_response_hits_inner.g.dart';

/// DefaultSearchResponseHitsInner
///
/// Properties:
/// * [href] 
/// * [type] 
@BuiltValue()
abstract class DefaultSearchResponseHitsInner implements Built<DefaultSearchResponseHitsInner, DefaultSearchResponseHitsInnerBuilder> {
  @BuiltValueField(wireName: r'href')
  String get href;

  @BuiltValueField(wireName: r'type')
  String get type;

  DefaultSearchResponseHitsInner._();

  factory DefaultSearchResponseHitsInner([void updates(DefaultSearchResponseHitsInnerBuilder b)]) = _$DefaultSearchResponseHitsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DefaultSearchResponseHitsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DefaultSearchResponseHitsInner> get serializer => _$DefaultSearchResponseHitsInnerSerializer();
}

class _$DefaultSearchResponseHitsInnerSerializer implements PrimitiveSerializer<DefaultSearchResponseHitsInner> {
  @override
  final Iterable<Type> types = const [DefaultSearchResponseHitsInner, _$DefaultSearchResponseHitsInner];

  @override
  final String wireName = r'DefaultSearchResponseHitsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DefaultSearchResponseHitsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'href';
    yield serializers.serialize(
      object.href,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DefaultSearchResponseHitsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DefaultSearchResponseHitsInnerBuilder result,
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
  DefaultSearchResponseHitsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DefaultSearchResponseHitsInnerBuilder();
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

