//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/about_ref.dart';
import 'package:openapi/src/model/lastupdated_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'about_links.g.dart';

/// AboutLinks
///
/// Properties:
/// * [self] 
/// * [lastupdated] 
@BuiltValue()
abstract class AboutLinks implements Built<AboutLinks, AboutLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  AboutRef? get self;

  @BuiltValueField(wireName: r'lastupdated')
  LastupdatedRef? get lastupdated;

  AboutLinks._();

  factory AboutLinks([void updates(AboutLinksBuilder b)]) = _$AboutLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AboutLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AboutLinks> get serializer => _$AboutLinksSerializer();
}

class _$AboutLinksSerializer implements PrimitiveSerializer<AboutLinks> {
  @override
  final Iterable<Type> types = const [AboutLinks, _$AboutLinks];

  @override
  final String wireName = r'AboutLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AboutLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(AboutRef),
      );
    }
    if (object.lastupdated != null) {
      yield r'lastupdated';
      yield serializers.serialize(
        object.lastupdated,
        specifiedType: const FullType(LastupdatedRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AboutLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AboutLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AboutRef),
          ) as AboutRef;
          result.self.replace(valueDes);
          break;
        case r'lastupdated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LastupdatedRef),
          ) as LastupdatedRef;
          result.lastupdated.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AboutLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AboutLinksBuilder();
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

