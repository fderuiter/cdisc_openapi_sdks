//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sdtmig_dataset_variable_ref.g.dart';

/// SdtmigDatasetVariableRef
///
/// Properties:
/// * [href] 
/// * [title] 
/// * [type] 
@BuiltValue()
abstract class SdtmigDatasetVariableRef implements Built<SdtmigDatasetVariableRef, SdtmigDatasetVariableRefBuilder> {
  @BuiltValueField(wireName: r'href')
  String? get href;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'type')
  String? get type;

  SdtmigDatasetVariableRef._();

  factory SdtmigDatasetVariableRef([void updates(SdtmigDatasetVariableRefBuilder b)]) = _$SdtmigDatasetVariableRef;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SdtmigDatasetVariableRefBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SdtmigDatasetVariableRef> get serializer => _$SdtmigDatasetVariableRefSerializer();
}

class _$SdtmigDatasetVariableRefSerializer implements PrimitiveSerializer<SdtmigDatasetVariableRef> {
  @override
  final Iterable<Type> types = const [SdtmigDatasetVariableRef, _$SdtmigDatasetVariableRef];

  @override
  final String wireName = r'SdtmigDatasetVariableRef';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SdtmigDatasetVariableRef object, {
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
    SdtmigDatasetVariableRef object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SdtmigDatasetVariableRefBuilder result,
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
  SdtmigDatasetVariableRef deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdtmigDatasetVariableRefBuilder();
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

