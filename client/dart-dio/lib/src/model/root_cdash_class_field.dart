//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/root_cdash_class_field_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'root_cdash_class_field.g.dart';

/// RootCdashClassField
///
/// Properties:
/// * [links] 
@BuiltValue()
abstract class RootCdashClassField implements Built<RootCdashClassField, RootCdashClassFieldBuilder> {
  @BuiltValueField(wireName: r'_links')
  RootCdashClassFieldLinks? get links;

  RootCdashClassField._();

  factory RootCdashClassField([void updates(RootCdashClassFieldBuilder b)]) = _$RootCdashClassField;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RootCdashClassFieldBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RootCdashClassField> get serializer => _$RootCdashClassFieldSerializer();
}

class _$RootCdashClassFieldSerializer implements PrimitiveSerializer<RootCdashClassField> {
  @override
  final Iterable<Type> types = const [RootCdashClassField, _$RootCdashClassField];

  @override
  final String wireName = r'RootCdashClassField';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RootCdashClassField object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(RootCdashClassFieldLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RootCdashClassField object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RootCdashClassFieldBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCdashClassFieldLinks),
          ) as RootCdashClassFieldLinks;
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
  RootCdashClassField deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RootCdashClassFieldBuilder();
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

