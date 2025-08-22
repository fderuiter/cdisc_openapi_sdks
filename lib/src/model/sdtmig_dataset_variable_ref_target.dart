//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sdtmig_dataset_variable_ref_target.g.dart';

/// SdtmigDatasetVariableRefTarget
///
/// Properties:
/// * [href] 
/// * [title] 
/// * [type] 
@BuiltValue()
abstract class SdtmigDatasetVariableRefTarget implements Built<SdtmigDatasetVariableRefTarget, SdtmigDatasetVariableRefTargetBuilder> {
  @BuiltValueField(wireName: r'href')
  String? get href;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'type')
  String? get type;

  SdtmigDatasetVariableRefTarget._();

  factory SdtmigDatasetVariableRefTarget([void updates(SdtmigDatasetVariableRefTargetBuilder b)]) = _$SdtmigDatasetVariableRefTarget;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SdtmigDatasetVariableRefTargetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SdtmigDatasetVariableRefTarget> get serializer => _$SdtmigDatasetVariableRefTargetSerializer();
}

class _$SdtmigDatasetVariableRefTargetSerializer implements PrimitiveSerializer<SdtmigDatasetVariableRefTarget> {
  @override
  final Iterable<Type> types = const [SdtmigDatasetVariableRefTarget, _$SdtmigDatasetVariableRefTarget];

  @override
  final String wireName = r'SdtmigDatasetVariableRefTarget';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SdtmigDatasetVariableRefTarget object, {
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
    SdtmigDatasetVariableRefTarget object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SdtmigDatasetVariableRefTargetBuilder result,
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
  SdtmigDatasetVariableRefTarget deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdtmigDatasetVariableRefTargetBuilder();
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

