//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/root_sdtm_class_variable_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'root_sdtm_class_variable.g.dart';

/// RootSdtmClassVariable
///
/// Properties:
/// * [links] 
@BuiltValue()
abstract class RootSdtmClassVariable implements Built<RootSdtmClassVariable, RootSdtmClassVariableBuilder> {
  @BuiltValueField(wireName: r'_links')
  RootSdtmClassVariableLinks? get links;

  RootSdtmClassVariable._();

  factory RootSdtmClassVariable([void updates(RootSdtmClassVariableBuilder b)]) = _$RootSdtmClassVariable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RootSdtmClassVariableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RootSdtmClassVariable> get serializer => _$RootSdtmClassVariableSerializer();
}

class _$RootSdtmClassVariableSerializer implements PrimitiveSerializer<RootSdtmClassVariable> {
  @override
  final Iterable<Type> types = const [RootSdtmClassVariable, _$RootSdtmClassVariable];

  @override
  final String wireName = r'RootSdtmClassVariable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RootSdtmClassVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(RootSdtmClassVariableLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RootSdtmClassVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RootSdtmClassVariableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootSdtmClassVariableLinks),
          ) as RootSdtmClassVariableLinks;
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
  RootSdtmClassVariable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RootSdtmClassVariableBuilder();
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

