//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/root_ct_codelist_ref.dart';
import 'package:openapi/src/model/ct_codelist_ref_version.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'root_ct_codelist_links.g.dart';

/// RootCtCodelistLinks
///
/// Properties:
/// * [self] 
/// * [versions] 
@BuiltValue()
abstract class RootCtCodelistLinks implements Built<RootCtCodelistLinks, RootCtCodelistLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  RootCtCodelistRef? get self;

  @BuiltValueField(wireName: r'versions')
  BuiltList<CtCodelistRefVersion>? get versions;

  RootCtCodelistLinks._();

  factory RootCtCodelistLinks([void updates(RootCtCodelistLinksBuilder b)]) = _$RootCtCodelistLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RootCtCodelistLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RootCtCodelistLinks> get serializer => _$RootCtCodelistLinksSerializer();
}

class _$RootCtCodelistLinksSerializer implements PrimitiveSerializer<RootCtCodelistLinks> {
  @override
  final Iterable<Type> types = const [RootCtCodelistLinks, _$RootCtCodelistLinks];

  @override
  final String wireName = r'RootCtCodelistLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RootCtCodelistLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(RootCtCodelistRef),
      );
    }
    if (object.versions != null) {
      yield r'versions';
      yield serializers.serialize(
        object.versions,
        specifiedType: const FullType(BuiltList, [FullType(CtCodelistRefVersion)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RootCtCodelistLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RootCtCodelistLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCtCodelistRef),
          ) as RootCtCodelistRef;
          result.self.replace(valueDes);
          break;
        case r'versions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CtCodelistRefVersion)]),
          ) as BuiltList<CtCodelistRefVersion>;
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
  RootCtCodelistLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RootCtCodelistLinksBuilder();
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

