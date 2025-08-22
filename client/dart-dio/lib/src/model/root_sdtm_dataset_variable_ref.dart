//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'root_sdtm_dataset_variable_ref.g.dart';

/// RootSdtmDatasetVariableRef
///
/// Properties:
/// * [href] 
/// * [title] 
/// * [type] 
@BuiltValue()
abstract class RootSdtmDatasetVariableRef implements Built<RootSdtmDatasetVariableRef, RootSdtmDatasetVariableRefBuilder> {
  @BuiltValueField(wireName: r'href')
  String? get href;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'type')
  String? get type;

  RootSdtmDatasetVariableRef._();

  factory RootSdtmDatasetVariableRef([void updates(RootSdtmDatasetVariableRefBuilder b)]) = _$RootSdtmDatasetVariableRef;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RootSdtmDatasetVariableRefBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RootSdtmDatasetVariableRef> get serializer => _$RootSdtmDatasetVariableRefSerializer();
}

class _$RootSdtmDatasetVariableRefSerializer implements PrimitiveSerializer<RootSdtmDatasetVariableRef> {
  @override
  final Iterable<Type> types = const [RootSdtmDatasetVariableRef, _$RootSdtmDatasetVariableRef];

  @override
  final String wireName = r'RootSdtmDatasetVariableRef';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RootSdtmDatasetVariableRef object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.href != null) {
      yield r'href';
      yield serializers.serialize(
        object.href,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RootSdtmDatasetVariableRef object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RootSdtmDatasetVariableRefBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'href':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.href = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RootSdtmDatasetVariableRef deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RootSdtmDatasetVariableRefBuilder();
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

