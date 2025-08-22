//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/sdtm_dataset_variable_ref_version.dart';
import 'package:openapi/src/model/root_sdtm_dataset_variable_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'root_sdtm_dataset_variable_links.g.dart';

/// RootSdtmDatasetVariableLinks
///
/// Properties:
/// * [self] 
/// * [versions] 
@BuiltValue()
abstract class RootSdtmDatasetVariableLinks implements Built<RootSdtmDatasetVariableLinks, RootSdtmDatasetVariableLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  RootSdtmDatasetVariableRef? get self;

  @BuiltValueField(wireName: r'versions')
  BuiltList<SdtmDatasetVariableRefVersion>? get versions;

  RootSdtmDatasetVariableLinks._();

  factory RootSdtmDatasetVariableLinks([void updates(RootSdtmDatasetVariableLinksBuilder b)]) = _$RootSdtmDatasetVariableLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RootSdtmDatasetVariableLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RootSdtmDatasetVariableLinks> get serializer => _$RootSdtmDatasetVariableLinksSerializer();
}

class _$RootSdtmDatasetVariableLinksSerializer implements PrimitiveSerializer<RootSdtmDatasetVariableLinks> {
  @override
  final Iterable<Type> types = const [RootSdtmDatasetVariableLinks, _$RootSdtmDatasetVariableLinks];

  @override
  final String wireName = r'RootSdtmDatasetVariableLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RootSdtmDatasetVariableLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(RootSdtmDatasetVariableRef),
      );
    }
    if (object.versions != null) {
      yield r'versions';
      yield serializers.serialize(
        object.versions,
        specifiedType: const FullType(BuiltList, [FullType(SdtmDatasetVariableRefVersion)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RootSdtmDatasetVariableLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RootSdtmDatasetVariableLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootSdtmDatasetVariableRef),
          ) as RootSdtmDatasetVariableRef;
          result.self.replace(valueDes);
          break;
        case r'versions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SdtmDatasetVariableRefVersion)]),
          ) as BuiltList<SdtmDatasetVariableRefVersion>;
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
  RootSdtmDatasetVariableLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RootSdtmDatasetVariableLinksBuilder();
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

