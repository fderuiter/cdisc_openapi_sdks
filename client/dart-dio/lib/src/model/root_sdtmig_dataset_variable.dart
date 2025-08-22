//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/root_sdtmig_dataset_variable_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'root_sdtmig_dataset_variable.g.dart';

/// RootSdtmigDatasetVariable
///
/// Properties:
/// * [links] 
@BuiltValue()
abstract class RootSdtmigDatasetVariable implements Built<RootSdtmigDatasetVariable, RootSdtmigDatasetVariableBuilder> {
  @BuiltValueField(wireName: r'_links')
  RootSdtmigDatasetVariableLinks? get links;

  RootSdtmigDatasetVariable._();

  factory RootSdtmigDatasetVariable([void updates(RootSdtmigDatasetVariableBuilder b)]) = _$RootSdtmigDatasetVariable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RootSdtmigDatasetVariableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RootSdtmigDatasetVariable> get serializer => _$RootSdtmigDatasetVariableSerializer();
}

class _$RootSdtmigDatasetVariableSerializer implements PrimitiveSerializer<RootSdtmigDatasetVariable> {
  @override
  final Iterable<Type> types = const [RootSdtmigDatasetVariable, _$RootSdtmigDatasetVariable];

  @override
  final String wireName = r'RootSdtmigDatasetVariable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RootSdtmigDatasetVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(RootSdtmigDatasetVariableLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RootSdtmigDatasetVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RootSdtmigDatasetVariableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootSdtmigDatasetVariableLinks),
          ) as RootSdtmigDatasetVariableLinks;
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
  RootSdtmigDatasetVariable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RootSdtmigDatasetVariableBuilder();
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

