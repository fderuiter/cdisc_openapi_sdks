//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sendig_dataset_variable.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/sendig_dataset_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sendig_dataset.g.dart';

/// SendigDataset
///
/// Properties:
/// * [ordinal] 
/// * [name] 
/// * [label] 
/// * [description] 
/// * [datasetStructure] 
/// * [links] 
/// * [datasetVariables] 
@BuiltValue()
abstract class SendigDataset implements Built<SendigDataset, SendigDatasetBuilder> {
  @BuiltValueField(wireName: r'ordinal')
  String? get ordinal;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'datasetStructure')
  String? get datasetStructure;

  @BuiltValueField(wireName: r'_links')
  SendigDatasetLinks? get links;

  @BuiltValueField(wireName: r'datasetVariables')
  BuiltList<SendigDatasetVariable>? get datasetVariables;

  SendigDataset._();

  factory SendigDataset([void updates(SendigDatasetBuilder b)]) = _$SendigDataset;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendigDatasetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendigDataset> get serializer => _$SendigDatasetSerializer();
}

class _$SendigDatasetSerializer implements PrimitiveSerializer<SendigDataset> {
  @override
  final Iterable<Type> types = const [SendigDataset, _$SendigDataset];

  @override
  final String wireName = r'SendigDataset';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendigDataset object, {
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
    if (object.datasetStructure != null) {
      yield r'datasetStructure';
      yield serializers.serialize(
        object.datasetStructure,
        specifiedType: const FullType(String),
      );
    }
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(SendigDatasetLinks),
      );
    }
    if (object.datasetVariables != null) {
      yield r'datasetVariables';
      yield serializers.serialize(
        object.datasetVariables,
        specifiedType: const FullType(BuiltList, [FullType(SendigDatasetVariable)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SendigDataset object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendigDatasetBuilder result,
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
        case r'datasetStructure':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.datasetStructure = valueDes;
          break;
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendigDatasetLinks),
          ) as SendigDatasetLinks;
          result.links.replace(valueDes);
          break;
        case r'datasetVariables':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SendigDatasetVariable)]),
          ) as BuiltList<SendigDatasetVariable>;
          result.datasetVariables.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SendigDataset deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendigDatasetBuilder();
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

