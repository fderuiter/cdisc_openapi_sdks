//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/lastupdated_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lastupdated_links.g.dart';

/// LastupdatedLinks
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class LastupdatedLinks implements Built<LastupdatedLinks, LastupdatedLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  LastupdatedRef? get self;

  LastupdatedLinks._();

  factory LastupdatedLinks([void updates(LastupdatedLinksBuilder b)]) = _$LastupdatedLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LastupdatedLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LastupdatedLinks> get serializer => _$LastupdatedLinksSerializer();
}

class _$LastupdatedLinksSerializer implements PrimitiveSerializer<LastupdatedLinks> {
  @override
  final Iterable<Type> types = const [LastupdatedLinks, _$LastupdatedLinks];

  @override
  final String wireName = r'LastupdatedLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LastupdatedLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(LastupdatedRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LastupdatedLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LastupdatedLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LastupdatedRef),
          ) as LastupdatedRef;
          result.self.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LastupdatedLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LastupdatedLinksBuilder();
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

