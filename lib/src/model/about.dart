//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/about_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'about.g.dart';

/// About
///
/// Properties:
/// * [links] 
/// * [releaseNotes] 
/// * [apiDocumentation] 
@BuiltValue()
abstract class About implements Built<About, AboutBuilder> {
  @BuiltValueField(wireName: r'_links')
  AboutLinks? get links;

  @BuiltValueField(wireName: r'release-notes')
  String? get releaseNotes;

  @BuiltValueField(wireName: r'api-documentation')
  String? get apiDocumentation;

  About._();

  factory About([void updates(AboutBuilder b)]) = _$About;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AboutBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<About> get serializer => _$AboutSerializer();
}

class _$AboutSerializer implements PrimitiveSerializer<About> {
  @override
  final Iterable<Type> types = const [About, _$About];

  @override
  final String wireName = r'About';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    About object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(AboutLinks),
      );
    }
    if (object.releaseNotes != null) {
      yield r'release-notes';
      yield serializers.serialize(
        object.releaseNotes,
        specifiedType: const FullType(String),
      );
    }
    if (object.apiDocumentation != null) {
      yield r'api-documentation';
      yield serializers.serialize(
        object.apiDocumentation,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    About object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AboutBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AboutLinks),
          ) as AboutLinks;
          result.links.replace(valueDes);
          break;
        case r'release-notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.releaseNotes = valueDes;
          break;
        case r'api-documentation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.apiDocumentation = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  About deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AboutBuilder();
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

