//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/root_cdash_class_field_ref.dart';
import 'package:openapi/src/model/cdash_class_field_ref_version.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'root_cdash_class_field_links.g.dart';

/// RootCdashClassFieldLinks
///
/// Properties:
/// * [self] 
/// * [versions] 
@BuiltValue()
abstract class RootCdashClassFieldLinks implements Built<RootCdashClassFieldLinks, RootCdashClassFieldLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  RootCdashClassFieldRef? get self;

  @BuiltValueField(wireName: r'versions')
  BuiltList<CdashClassFieldRefVersion>? get versions;

  RootCdashClassFieldLinks._();

  factory RootCdashClassFieldLinks([void updates(RootCdashClassFieldLinksBuilder b)]) = _$RootCdashClassFieldLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RootCdashClassFieldLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RootCdashClassFieldLinks> get serializer => _$RootCdashClassFieldLinksSerializer();
}

class _$RootCdashClassFieldLinksSerializer implements PrimitiveSerializer<RootCdashClassFieldLinks> {
  @override
  final Iterable<Type> types = const [RootCdashClassFieldLinks, _$RootCdashClassFieldLinks];

  @override
  final String wireName = r'RootCdashClassFieldLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RootCdashClassFieldLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(RootCdashClassFieldRef),
      );
    }
    if (object.versions != null) {
      yield r'versions';
      yield serializers.serialize(
        object.versions,
        specifiedType: const FullType(BuiltList, [FullType(CdashClassFieldRefVersion)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RootCdashClassFieldLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RootCdashClassFieldLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCdashClassFieldRef),
          ) as RootCdashClassFieldRef;
          result.self.replace(valueDes);
          break;
        case r'versions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CdashClassFieldRefVersion)]),
          ) as BuiltList<CdashClassFieldRefVersion>;
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
  RootCdashClassFieldLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RootCdashClassFieldLinksBuilder();
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

