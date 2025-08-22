//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/root_ct_term_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'root_ct_term.g.dart';

/// RootCtTerm
///
/// Properties:
/// * [links] 
@BuiltValue()
abstract class RootCtTerm implements Built<RootCtTerm, RootCtTermBuilder> {
  @BuiltValueField(wireName: r'_links')
  RootCtTermLinks? get links;

  RootCtTerm._();

  factory RootCtTerm([void updates(RootCtTermBuilder b)]) = _$RootCtTerm;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RootCtTermBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RootCtTerm> get serializer => _$RootCtTermSerializer();
}

class _$RootCtTermSerializer implements PrimitiveSerializer<RootCtTerm> {
  @override
  final Iterable<Type> types = const [RootCtTerm, _$RootCtTerm];

  @override
  final String wireName = r'RootCtTerm';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RootCtTerm object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(RootCtTermLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RootCtTerm object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RootCtTermBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCtTermLinks),
          ) as RootCtTermLinks;
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
  RootCtTerm deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RootCtTermBuilder();
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

