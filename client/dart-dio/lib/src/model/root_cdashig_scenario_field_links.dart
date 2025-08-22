//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/root_cdashig_scenario_field_ref.dart';
import 'package:openapi/src/model/cdashig_scenario_field_ref_version.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'root_cdashig_scenario_field_links.g.dart';

/// RootCdashigScenarioFieldLinks
///
/// Properties:
/// * [self] 
/// * [versions] 
@BuiltValue()
abstract class RootCdashigScenarioFieldLinks implements Built<RootCdashigScenarioFieldLinks, RootCdashigScenarioFieldLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  RootCdashigScenarioFieldRef? get self;

  @BuiltValueField(wireName: r'versions')
  BuiltList<CdashigScenarioFieldRefVersion>? get versions;

  RootCdashigScenarioFieldLinks._();

  factory RootCdashigScenarioFieldLinks([void updates(RootCdashigScenarioFieldLinksBuilder b)]) = _$RootCdashigScenarioFieldLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RootCdashigScenarioFieldLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RootCdashigScenarioFieldLinks> get serializer => _$RootCdashigScenarioFieldLinksSerializer();
}

class _$RootCdashigScenarioFieldLinksSerializer implements PrimitiveSerializer<RootCdashigScenarioFieldLinks> {
  @override
  final Iterable<Type> types = const [RootCdashigScenarioFieldLinks, _$RootCdashigScenarioFieldLinks];

  @override
  final String wireName = r'RootCdashigScenarioFieldLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RootCdashigScenarioFieldLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(RootCdashigScenarioFieldRef),
      );
    }
    if (object.versions != null) {
      yield r'versions';
      yield serializers.serialize(
        object.versions,
        specifiedType: const FullType(BuiltList, [FullType(CdashigScenarioFieldRefVersion)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RootCdashigScenarioFieldLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RootCdashigScenarioFieldLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCdashigScenarioFieldRef),
          ) as RootCdashigScenarioFieldRef;
          result.self.replace(valueDes);
          break;
        case r'versions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CdashigScenarioFieldRefVersion)]),
          ) as BuiltList<CdashigScenarioFieldRefVersion>;
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
  RootCdashigScenarioFieldLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RootCdashigScenarioFieldLinksBuilder();
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

