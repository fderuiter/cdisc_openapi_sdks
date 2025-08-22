//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/default_search_response_hits_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'default_search_response.g.dart';

/// DefaultSearchResponse
///
/// Properties:
/// * [hits] 
/// * [totalHits] 
@BuiltValue()
abstract class DefaultSearchResponse implements Built<DefaultSearchResponse, DefaultSearchResponseBuilder> {
  @BuiltValueField(wireName: r'hits')
  BuiltList<DefaultSearchResponseHitsInner>? get hits;

  @BuiltValueField(wireName: r'totalHits')
  num? get totalHits;

  DefaultSearchResponse._();

  factory DefaultSearchResponse([void updates(DefaultSearchResponseBuilder b)]) = _$DefaultSearchResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DefaultSearchResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DefaultSearchResponse> get serializer => _$DefaultSearchResponseSerializer();
}

class _$DefaultSearchResponseSerializer implements PrimitiveSerializer<DefaultSearchResponse> {
  @override
  final Iterable<Type> types = const [DefaultSearchResponse, _$DefaultSearchResponse];

  @override
  final String wireName = r'DefaultSearchResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DefaultSearchResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.hits != null) {
      yield r'hits';
      yield serializers.serialize(
        object.hits,
        specifiedType: const FullType(BuiltList, [FullType(DefaultSearchResponseHitsInner)]),
      );
    }
    if (object.totalHits != null) {
      yield r'totalHits';
      yield serializers.serialize(
        object.totalHits,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DefaultSearchResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DefaultSearchResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'hits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(DefaultSearchResponseHitsInner)]),
          ) as BuiltList<DefaultSearchResponseHitsInner>;
          result.hits.replace(valueDes);
          break;
        case r'totalHits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.totalHits = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DefaultSearchResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DefaultSearchResponseBuilder();
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

