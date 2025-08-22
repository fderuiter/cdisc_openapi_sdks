//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/root_sdtmig_dataset_variable_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/sdtmig_dataset_variable_ref_version.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'root_sdtmig_dataset_variable_links.g.dart';

/// RootSdtmigDatasetVariableLinks
///
/// Properties:
/// * [self] 
/// * [versions] 
@BuiltValue()
abstract class RootSdtmigDatasetVariableLinks implements Built<RootSdtmigDatasetVariableLinks, RootSdtmigDatasetVariableLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  RootSdtmigDatasetVariableRef? get self;

  @BuiltValueField(wireName: r'versions')
  BuiltList<SdtmigDatasetVariableRefVersion>? get versions;

  RootSdtmigDatasetVariableLinks._();

  factory RootSdtmigDatasetVariableLinks([void updates(RootSdtmigDatasetVariableLinksBuilder b)]) = _$RootSdtmigDatasetVariableLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RootSdtmigDatasetVariableLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RootSdtmigDatasetVariableLinks> get serializer => _$RootSdtmigDatasetVariableLinksSerializer();
}

class _$RootSdtmigDatasetVariableLinksSerializer implements PrimitiveSerializer<RootSdtmigDatasetVariableLinks> {
  @override
  final Iterable<Type> types = const [RootSdtmigDatasetVariableLinks, _$RootSdtmigDatasetVariableLinks];

  @override
  final String wireName = r'RootSdtmigDatasetVariableLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RootSdtmigDatasetVariableLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(RootSdtmigDatasetVariableRef),
      );
    }
    if (object.versions != null) {
      yield r'versions';
      yield serializers.serialize(
        object.versions,
        specifiedType: const FullType(BuiltList, [FullType(SdtmigDatasetVariableRefVersion)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RootSdtmigDatasetVariableLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RootSdtmigDatasetVariableLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootSdtmigDatasetVariableRef),
          ) as RootSdtmigDatasetVariableRef;
          result.self.replace(valueDes);
          break;
        case r'versions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SdtmigDatasetVariableRefVersion)]),
          ) as BuiltList<SdtmigDatasetVariableRefVersion>;
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
  RootSdtmigDatasetVariableLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RootSdtmigDatasetVariableLinksBuilder();
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

