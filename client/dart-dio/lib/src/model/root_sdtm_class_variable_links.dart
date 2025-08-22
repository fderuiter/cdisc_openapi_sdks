//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/root_sdtm_class_variable_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/sdtm_class_variable_ref_version.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'root_sdtm_class_variable_links.g.dart';

/// RootSdtmClassVariableLinks
///
/// Properties:
/// * [self] 
/// * [versions] 
@BuiltValue()
abstract class RootSdtmClassVariableLinks implements Built<RootSdtmClassVariableLinks, RootSdtmClassVariableLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  RootSdtmClassVariableRef? get self;

  @BuiltValueField(wireName: r'versions')
  BuiltList<SdtmClassVariableRefVersion>? get versions;

  RootSdtmClassVariableLinks._();

  factory RootSdtmClassVariableLinks([void updates(RootSdtmClassVariableLinksBuilder b)]) = _$RootSdtmClassVariableLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RootSdtmClassVariableLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RootSdtmClassVariableLinks> get serializer => _$RootSdtmClassVariableLinksSerializer();
}

class _$RootSdtmClassVariableLinksSerializer implements PrimitiveSerializer<RootSdtmClassVariableLinks> {
  @override
  final Iterable<Type> types = const [RootSdtmClassVariableLinks, _$RootSdtmClassVariableLinks];

  @override
  final String wireName = r'RootSdtmClassVariableLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RootSdtmClassVariableLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(RootSdtmClassVariableRef),
      );
    }
    if (object.versions != null) {
      yield r'versions';
      yield serializers.serialize(
        object.versions,
        specifiedType: const FullType(BuiltList, [FullType(SdtmClassVariableRefVersion)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RootSdtmClassVariableLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RootSdtmClassVariableLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootSdtmClassVariableRef),
          ) as RootSdtmClassVariableRef;
          result.self.replace(valueDes);
          break;
        case r'versions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SdtmClassVariableRefVersion)]),
          ) as BuiltList<SdtmClassVariableRefVersion>;
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
  RootSdtmClassVariableLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RootSdtmClassVariableLinksBuilder();
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

