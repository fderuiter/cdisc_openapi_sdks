//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/root_cdashig_domain_field_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'root_cdashig_domain_field.g.dart';

/// RootCdashigDomainField
///
/// Properties:
/// * [links] 
@BuiltValue()
abstract class RootCdashigDomainField implements Built<RootCdashigDomainField, RootCdashigDomainFieldBuilder> {
  @BuiltValueField(wireName: r'_links')
  RootCdashigDomainFieldLinks? get links;

  RootCdashigDomainField._();

  factory RootCdashigDomainField([void updates(RootCdashigDomainFieldBuilder b)]) = _$RootCdashigDomainField;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RootCdashigDomainFieldBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RootCdashigDomainField> get serializer => _$RootCdashigDomainFieldSerializer();
}

class _$RootCdashigDomainFieldSerializer implements PrimitiveSerializer<RootCdashigDomainField> {
  @override
  final Iterable<Type> types = const [RootCdashigDomainField, _$RootCdashigDomainField];

  @override
  final String wireName = r'RootCdashigDomainField';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RootCdashigDomainField object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(RootCdashigDomainFieldLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RootCdashigDomainField object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RootCdashigDomainFieldBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCdashigDomainFieldLinks),
          ) as RootCdashigDomainFieldLinks;
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
  RootCdashigDomainField deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RootCdashigDomainFieldBuilder();
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

