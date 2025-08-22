//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/default_search_scopes.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mdr_search_scopes_get200_response.g.dart';

/// MdrSearchScopesGet200Response
///
/// Properties:
/// * [scopes] 
@BuiltValue()
abstract class MdrSearchScopesGet200Response implements Built<MdrSearchScopesGet200Response, MdrSearchScopesGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'scopes')
  BuiltList<DefaultSearchScopes>? get scopes;

  MdrSearchScopesGet200Response._();

  factory MdrSearchScopesGet200Response([void updates(MdrSearchScopesGet200ResponseBuilder b)]) = _$MdrSearchScopesGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MdrSearchScopesGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MdrSearchScopesGet200Response> get serializer => _$MdrSearchScopesGet200ResponseSerializer();
}

class _$MdrSearchScopesGet200ResponseSerializer implements PrimitiveSerializer<MdrSearchScopesGet200Response> {
  @override
  final Iterable<Type> types = const [MdrSearchScopesGet200Response, _$MdrSearchScopesGet200Response];

  @override
  final String wireName = r'MdrSearchScopesGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MdrSearchScopesGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.scopes != null) {
      yield r'scopes';
      yield serializers.serialize(
        object.scopes,
        specifiedType: const FullType(BuiltList, [FullType(DefaultSearchScopes)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MdrSearchScopesGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MdrSearchScopesGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'scopes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(DefaultSearchScopes)]),
          ) as BuiltList<DefaultSearchScopes>;
          result.scopes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MdrSearchScopesGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MdrSearchScopesGet200ResponseBuilder();
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

