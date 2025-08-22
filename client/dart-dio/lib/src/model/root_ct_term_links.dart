//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/root_ct_term_ref.dart';
import 'package:openapi/src/model/ct_term_ref_version.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'root_ct_term_links.g.dart';

/// RootCtTermLinks
///
/// Properties:
/// * [self] 
/// * [versions] 
@BuiltValue()
abstract class RootCtTermLinks implements Built<RootCtTermLinks, RootCtTermLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  RootCtTermRef? get self;

  @BuiltValueField(wireName: r'versions')
  BuiltList<CtTermRefVersion>? get versions;

  RootCtTermLinks._();

  factory RootCtTermLinks([void updates(RootCtTermLinksBuilder b)]) = _$RootCtTermLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RootCtTermLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RootCtTermLinks> get serializer => _$RootCtTermLinksSerializer();
}

class _$RootCtTermLinksSerializer implements PrimitiveSerializer<RootCtTermLinks> {
  @override
  final Iterable<Type> types = const [RootCtTermLinks, _$RootCtTermLinks];

  @override
  final String wireName = r'RootCtTermLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RootCtTermLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(RootCtTermRef),
      );
    }
    if (object.versions != null) {
      yield r'versions';
      yield serializers.serialize(
        object.versions,
        specifiedType: const FullType(BuiltList, [FullType(CtTermRefVersion)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RootCtTermLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RootCtTermLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCtTermRef),
          ) as RootCtTermRef;
          result.self.replace(valueDes);
          break;
        case r'versions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CtTermRefVersion)]),
          ) as BuiltList<CtTermRefVersion>;
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
  RootCtTermLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RootCtTermLinksBuilder();
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

