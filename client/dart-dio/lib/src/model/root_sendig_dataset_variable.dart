//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/root_sendig_dataset_variable_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'root_sendig_dataset_variable.g.dart';

/// RootSendigDatasetVariable
///
/// Properties:
/// * [links] 
@BuiltValue()
abstract class RootSendigDatasetVariable implements Built<RootSendigDatasetVariable, RootSendigDatasetVariableBuilder> {
  @BuiltValueField(wireName: r'_links')
  RootSendigDatasetVariableLinks? get links;

  RootSendigDatasetVariable._();

  factory RootSendigDatasetVariable([void updates(RootSendigDatasetVariableBuilder b)]) = _$RootSendigDatasetVariable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RootSendigDatasetVariableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RootSendigDatasetVariable> get serializer => _$RootSendigDatasetVariableSerializer();
}

class _$RootSendigDatasetVariableSerializer implements PrimitiveSerializer<RootSendigDatasetVariable> {
  @override
  final Iterable<Type> types = const [RootSendigDatasetVariable, _$RootSendigDatasetVariable];

  @override
  final String wireName = r'RootSendigDatasetVariable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RootSendigDatasetVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(RootSendigDatasetVariableLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RootSendigDatasetVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RootSendigDatasetVariableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootSendigDatasetVariableLinks),
          ) as RootSendigDatasetVariableLinks;
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
  RootSendigDatasetVariable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RootSendigDatasetVariableBuilder();
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

