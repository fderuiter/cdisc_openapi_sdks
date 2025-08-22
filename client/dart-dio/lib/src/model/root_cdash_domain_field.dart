//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/root_cdash_domain_field_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'root_cdash_domain_field.g.dart';

/// RootCdashDomainField
///
/// Properties:
/// * [links] 
@BuiltValue()
abstract class RootCdashDomainField implements Built<RootCdashDomainField, RootCdashDomainFieldBuilder> {
  @BuiltValueField(wireName: r'_links')
  RootCdashDomainFieldLinks? get links;

  RootCdashDomainField._();

  factory RootCdashDomainField([void updates(RootCdashDomainFieldBuilder b)]) = _$RootCdashDomainField;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RootCdashDomainFieldBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RootCdashDomainField> get serializer => _$RootCdashDomainFieldSerializer();
}

class _$RootCdashDomainFieldSerializer implements PrimitiveSerializer<RootCdashDomainField> {
  @override
  final Iterable<Type> types = const [RootCdashDomainField, _$RootCdashDomainField];

  @override
  final String wireName = r'RootCdashDomainField';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RootCdashDomainField object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(RootCdashDomainFieldLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RootCdashDomainField object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RootCdashDomainFieldBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCdashDomainFieldLinks),
          ) as RootCdashDomainFieldLinks;
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
  RootCdashDomainField deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RootCdashDomainFieldBuilder();
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

