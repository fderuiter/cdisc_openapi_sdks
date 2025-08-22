//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/root_sdtm_dataset_variable_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'root_sdtm_dataset_variable.g.dart';

/// RootSdtmDatasetVariable
///
/// Properties:
/// * [links] 
@BuiltValue()
abstract class RootSdtmDatasetVariable implements Built<RootSdtmDatasetVariable, RootSdtmDatasetVariableBuilder> {
  @BuiltValueField(wireName: r'_links')
  RootSdtmDatasetVariableLinks? get links;

  RootSdtmDatasetVariable._();

  factory RootSdtmDatasetVariable([void updates(RootSdtmDatasetVariableBuilder b)]) = _$RootSdtmDatasetVariable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RootSdtmDatasetVariableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RootSdtmDatasetVariable> get serializer => _$RootSdtmDatasetVariableSerializer();
}

class _$RootSdtmDatasetVariableSerializer implements PrimitiveSerializer<RootSdtmDatasetVariable> {
  @override
  final Iterable<Type> types = const [RootSdtmDatasetVariable, _$RootSdtmDatasetVariable];

  @override
  final String wireName = r'RootSdtmDatasetVariable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RootSdtmDatasetVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(RootSdtmDatasetVariableLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RootSdtmDatasetVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RootSdtmDatasetVariableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootSdtmDatasetVariableLinks),
          ) as RootSdtmDatasetVariableLinks;
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
  RootSdtmDatasetVariable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RootSdtmDatasetVariableBuilder();
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

