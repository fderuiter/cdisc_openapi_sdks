//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sendig_class_datasets_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sendig_class_datasets.g.dart';

/// SendigClassDatasets
///
/// Properties:
/// * [ordinal] 
/// * [name] 
/// * [label] 
/// * [description] 
/// * [links] 
@BuiltValue()
abstract class SendigClassDatasets implements Built<SendigClassDatasets, SendigClassDatasetsBuilder> {
  @BuiltValueField(wireName: r'ordinal')
  String? get ordinal;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'_links')
  SendigClassDatasetsLinks? get links;

  SendigClassDatasets._();

  factory SendigClassDatasets([void updates(SendigClassDatasetsBuilder b)]) = _$SendigClassDatasets;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendigClassDatasetsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendigClassDatasets> get serializer => _$SendigClassDatasetsSerializer();
}

class _$SendigClassDatasetsSerializer implements PrimitiveSerializer<SendigClassDatasets> {
  @override
  final Iterable<Type> types = const [SendigClassDatasets, _$SendigClassDatasets];

  @override
  final String wireName = r'SendigClassDatasets';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendigClassDatasets object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ordinal != null) {
      yield r'ordinal';
      yield serializers.serialize(
        object.ordinal,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(SendigClassDatasetsLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SendigClassDatasets object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendigClassDatasetsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ordinal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ordinal = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendigClassDatasetsLinks),
          ) as SendigClassDatasetsLinks;
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
  SendigClassDatasets deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendigClassDatasetsBuilder();
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

