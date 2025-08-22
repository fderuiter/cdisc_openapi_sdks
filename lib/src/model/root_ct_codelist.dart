//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/root_ct_codelist_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'root_ct_codelist.g.dart';

/// RootCtCodelist
///
/// Properties:
/// * [links] 
@BuiltValue()
abstract class RootCtCodelist implements Built<RootCtCodelist, RootCtCodelistBuilder> {
  @BuiltValueField(wireName: r'_links')
  RootCtCodelistLinks? get links;

  RootCtCodelist._();

  factory RootCtCodelist([void updates(RootCtCodelistBuilder b)]) = _$RootCtCodelist;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RootCtCodelistBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RootCtCodelist> get serializer => _$RootCtCodelistSerializer();
}

class _$RootCtCodelistSerializer implements PrimitiveSerializer<RootCtCodelist> {
  @override
  final Iterable<Type> types = const [RootCtCodelist, _$RootCtCodelist];

  @override
  final String wireName = r'RootCtCodelist';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RootCtCodelist object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(RootCtCodelistLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RootCtCodelist object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RootCtCodelistBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCtCodelistLinks),
          ) as RootCtCodelistLinks;
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
  RootCtCodelist deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RootCtCodelistBuilder();
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

