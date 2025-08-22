//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/root_cdash_domain_field_ref.dart';
import 'package:openapi/src/model/cdash_domain_field_ref_version.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'root_cdash_domain_field_links.g.dart';

/// RootCdashDomainFieldLinks
///
/// Properties:
/// * [self] 
/// * [versions] 
@BuiltValue()
abstract class RootCdashDomainFieldLinks implements Built<RootCdashDomainFieldLinks, RootCdashDomainFieldLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  RootCdashDomainFieldRef? get self;

  @BuiltValueField(wireName: r'versions')
  BuiltList<CdashDomainFieldRefVersion>? get versions;

  RootCdashDomainFieldLinks._();

  factory RootCdashDomainFieldLinks([void updates(RootCdashDomainFieldLinksBuilder b)]) = _$RootCdashDomainFieldLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RootCdashDomainFieldLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RootCdashDomainFieldLinks> get serializer => _$RootCdashDomainFieldLinksSerializer();
}

class _$RootCdashDomainFieldLinksSerializer implements PrimitiveSerializer<RootCdashDomainFieldLinks> {
  @override
  final Iterable<Type> types = const [RootCdashDomainFieldLinks, _$RootCdashDomainFieldLinks];

  @override
  final String wireName = r'RootCdashDomainFieldLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RootCdashDomainFieldLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(RootCdashDomainFieldRef),
      );
    }
    if (object.versions != null) {
      yield r'versions';
      yield serializers.serialize(
        object.versions,
        specifiedType: const FullType(BuiltList, [FullType(CdashDomainFieldRefVersion)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RootCdashDomainFieldLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RootCdashDomainFieldLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCdashDomainFieldRef),
          ) as RootCdashDomainFieldRef;
          result.self.replace(valueDes);
          break;
        case r'versions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CdashDomainFieldRefVersion)]),
          ) as BuiltList<CdashDomainFieldRefVersion>;
          result.versions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RootCdashDomainFieldLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RootCdashDomainFieldLinksBuilder();
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

