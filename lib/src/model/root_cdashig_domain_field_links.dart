//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/root_cdashig_domain_field_ref.dart';
import 'package:openapi/src/model/cdashig_domain_field_ref_version.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'root_cdashig_domain_field_links.g.dart';

/// RootCdashigDomainFieldLinks
///
/// Properties:
/// * [self] 
/// * [versions] 
@BuiltValue()
abstract class RootCdashigDomainFieldLinks implements Built<RootCdashigDomainFieldLinks, RootCdashigDomainFieldLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  RootCdashigDomainFieldRef? get self;

  @BuiltValueField(wireName: r'versions')
  BuiltList<CdashigDomainFieldRefVersion>? get versions;

  RootCdashigDomainFieldLinks._();

  factory RootCdashigDomainFieldLinks([void updates(RootCdashigDomainFieldLinksBuilder b)]) = _$RootCdashigDomainFieldLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RootCdashigDomainFieldLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RootCdashigDomainFieldLinks> get serializer => _$RootCdashigDomainFieldLinksSerializer();
}

class _$RootCdashigDomainFieldLinksSerializer implements PrimitiveSerializer<RootCdashigDomainFieldLinks> {
  @override
  final Iterable<Type> types = const [RootCdashigDomainFieldLinks, _$RootCdashigDomainFieldLinks];

  @override
  final String wireName = r'RootCdashigDomainFieldLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RootCdashigDomainFieldLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(RootCdashigDomainFieldRef),
      );
    }
    if (object.versions != null) {
      yield r'versions';
      yield serializers.serialize(
        object.versions,
        specifiedType: const FullType(BuiltList, [FullType(CdashigDomainFieldRefVersion)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RootCdashigDomainFieldLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RootCdashigDomainFieldLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCdashigDomainFieldRef),
          ) as RootCdashigDomainFieldRef;
          result.self.replace(valueDes);
          break;
        case r'versions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CdashigDomainFieldRefVersion)]),
          ) as BuiltList<CdashigDomainFieldRefVersion>;
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
  RootCdashigDomainFieldLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RootCdashigDomainFieldLinksBuilder();
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

